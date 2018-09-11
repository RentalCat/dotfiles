scriptencoding utf-8

if !exists('g:lightline')
  let g:lightline = {}
  let g:mylightline = {}
endif

let g:lightline = {
      \   'colorscheme': 'powerline',
      \   'active': {
      \     'left': [
      \       ['mode', 'paste'],
      \       ['gitbranch', 'readonly', 'filename'],
      \     ],
      \     'right': [
      \       ['lineinfo', 'charvaluehex', 'linter_checking', 'linter_warnings', 'linter_errors', 'linter_ok'],
      \       ['percent'],
      \       ['fileformat', 'fileencoding', 'filetype'],
      \     ],
      \   },
      \   'component': {
      \     'paste': '%{&paste ? "PST" : ""}',
      \     'charvaluehex': '0x%04B',
      \   },
      \   'component_function': {
      \     'gitbranch'   : 'g:mylightline.getGitBranch',
      \     'readonly'    : 'g:mylightline.getReadonly',
      \     'filename'    : 'g:mylightline.getFilename',
      \     'debug'       : 'g:mylightline.getDebugText',
      \     'fileformat'  : 'g:mylightline.getFileFormat',
      \     'filetype'    : 'g:mylightline.getFileType',
      \     'fileencoding': 'g:mylightline.getFileEncoding',
      \   },
      \   'separator': {'left': "\u2b80", 'right': "\u2b82"},
      \   'subseparator': {'left': "\u2b81", 'right': "\u2b83"},
      \   'mode_map': {
      \     'n': 'NOR',     'i': 'INS', 'R': 'REP', 'v': 'VIS', 'V': 'V-L',
      \     "\<C-v>": 'V-B','c': 'COM', 's': 'SEL', 'S': 'S-L', "\<C-s>": 'S-B',
      \     't': 'TER',
      \   },
      \ }

" シンタックスチェックを lightline#update に hock する
let g:ale_statusline_format = ['E%d', 'W%d', '']
augroup ale_statusline
  autocmd!
  autocmd User ALELint call lightline#update()
augroup END

let s:displayable_components = {}
let s:margin = 0
let s:mode_len = 6
let s:paste_len = 6
let s:persent_len = 8
let s:charvalue_len = 10

function! s:lineInfoLen() abort
  " 現在の位置情報文字列の長さ
  let l:line_num = max([strlen(line('.')), 3])
  let l:col_num = max([strlen(col('.')), 2])
  return l:line_num + l:col_num + 3
endfunction

function! s:readonly() abort
  " 読込専用 & 編集状態 の文字列
  return (!&modifiable || &readonly) ? "\u2b64" : &modified ? '+' : ''
endfunction

function! s:gitBranchName() abort
  " Git branch名
  if !exists('*fugitive#head')
    return ''
  else
    return "\u2b60 ". fugitive#head()
  endif
endfunction

function! s:filename() abort
  " 現在のファイル名
  return expand('%:t')
endfunction

function! s:relPath() abort
  " 相対パス
  return substitute(expand('%'), s:filename(), '', 'g')
endfunction

function! s:absPath() abort
  " 絶対パス
  return substitute(expand('%:p'), s:relPath() . s:filename(), '', 'g')
endfunction

function! s:fileformat() abort
  " ファイルフォーマット
  return &fileformat
endfunction

function! s:filetype() abort
  " ファイルタイプ
  return &filetype == '' ? 'no ft' : &filetype
endfunction

function! s:fileencoding() abort
  " ファイルエンコーディング
  return &fileencoding == '' ? &fileencoding : &encoding
endfunction

function! s:updateDisplayableComponents() abort
  let s:displayable_components = {}
  let l:rlen = winwidth(0) - s:margin
  " 絶対に表示するもの(mode, lineinfo, percent)を引く
  let l:rlen -= s:mode_len + (&paste ? s:paste_len : 0) + s:lineInfoLen() +
        \       s:persent_len + s:charvalue_len

  " readonly
  let l:rlen = s:setDisplayableComponents('readonly', s:readonly(), l:rlen, 3)

  " ファイル名
  let l:rlen = s:setDisplayableComponents('filename', s:filename(), l:rlen, 3)
  if l:rlen <= 0 | return | endif  " 表示枠足りなかったらここで終了

  " 相対パス (カレントディテクトリから該当ファイルのあるディレクトリパスまで)
  let l:rlen = s:setDisplayableComponents('relpath', s:relPath(), l:rlen, 0)
  if l:rlen <= 0 | return | endif  " 表示枠足りなかったらここで終了

  " git 情報
  let l:rlen = s:setDisplayableComponents('git', s:gitBranchName(), l:rlen, 3)
  if l:rlen <= 0 | return | endif  " 表示枠足りなかったらここで終了

  " ファイルタイプ
  let l:rlen = s:setDisplayableComponents('ftype', s:filetype(), l:rlen, 3)
  " ファイルエンコーディング
  let l:rlen = s:setDisplayableComponents('fencoding', s:fileencoding(), l:rlen, 3)
  " ファイルタイプ
  let l:rlen = s:setDisplayableComponents('fformat', s:fileformat(), l:rlen, 3)
  if l:rlen <= 0 | return | endif  " 表示枠足りなかったらここで終了

  " 絶対パス (ルートディレクトリからカレントディテクトリまで)
  let l:rlen = s:setDisplayableComponents('abspath', s:absPath(), l:rlen, 0)
  if l:rlen <= 0 | return | endif  " 表示枠足りなかったらここで終了

  " デバッグ用
  let s:displayable_components['debug'] = repeat('x', l:rlen)
endfunction

function! s:setDisplayableComponents(key, value, limit, margin) abort
  let l:value_len = strlen(a:value)
  let l:rlen = a:limit - (l:value_len ? l:value_len + a:margin : 0)
  if l:rlen >= 0
    let s:displayable_components[a:key] = a:value
  endif
  return l:rlen
endfunction

function! s:getDisplayableComponents(key) abort
  if has_key(s:displayable_components, a:key)
    return s:displayable_components[a:key]
  else
    return ''
  endif
endfunction

function! g:mylightline.getGitBranch() abort
  call s:updateDisplayableComponents()
  return s:getDisplayableComponents('git')
endfunction

function! g:mylightline.getReadonly() abort
  call s:updateDisplayableComponents()
  return s:getDisplayableComponents('readonly')
endfunction

function! g:mylightline.getFilename() abort
  call s:updateDisplayableComponents()
  return s:getDisplayableComponents('abspath')
        \ . s:getDisplayableComponents('relpath')
        \ . s:getDisplayableComponents('filename')
endfunction

function! g:mylightline.getDebugText() abort
  " デバッグ用
  call s:updateDisplayableComponents()
  return s:getDisplayableComponents('debug')
endfunction

function! g:mylightline.getFileFormat() abort
  call s:updateDisplayableComponents()
  return s:getDisplayableComponents('fformat')
endfunction

function! g:mylightline.getFileType() abort
  call s:updateDisplayableComponents()
  return s:getDisplayableComponents('ftype')
endfunction

function! g:mylightline.getFileEncoding() abort
  call s:updateDisplayableComponents()
  return s:getDisplayableComponents('fencoding')
endfunction
