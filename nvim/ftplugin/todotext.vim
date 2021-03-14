scriptencoding utf-8
let s:save_cpo = &cpoptions
set cpoptions&vim

" フォーマット範囲の上限値: ファイルの何行目までフォーマットするか？
let s:max_format_line = 100
let s:default_priority = 'C'

" アルファベットをインクリメント・デクリメントできるように (優先度変更用)
setlocal nrformats+=alpha

" 色付けカラムはなし
setlocal colorcolumn=

let s:priority_ptn = '(\a)'
let s:date_ptn = '\d\{4}-\d\{2}-\d\{2}'

function! s:today() abort
    return strftime('%Y-%m-%d')
endfunction

" タスク完了時を1キーでトグルできるようにする
function! TodoToggleComplete() abort
  let l:is_completed = getline('.')[0] == 'x'
  let l:line = line('.')
  if l:is_completed
    let l:pat = '^x \(\d\{4}-\d\{2}-\d\{2}\) \(\d\{4}-\d\{2}-\d\{2}\) \((\a)\)'
    let l:sub = '\3 \2'
  else
    let l:pat = '^\((\a)\) \(\d\{4}-\d\{2}-\d\{2}\)'
    let l:sub = 'x '. s:today() .' \2 \1'
  endif
  call setline(l:line, substitute(getline(l:line), l:pat, l:sub, ''))
endfunction

function! s:matchpert(expr, pat, default) abort
  let l:result = matchlist(a:expr, a:pat)

  if !empty(l:result)
    return l:result[1]
  endif

  return a:default
endfunction

function! TodoTextFormatter() abort
  let l:priority_ptn = '(\a)'
  let l:date_ptn = '\d\{4}-\d\{2}-\d\{2}'
  let l:todo_ptn = '^' . join([l:priority_ptn, l:date_ptn], ' ')

  for l:line in range(min([s:max_format_line, line('$')]))
    let l:text = getline(l:line + 1)
    if match(l:text, '^x') !=# -1
      continue
    elseif match(l:text, l:todo_ptn) ==# -1
      let l:priority = s:matchpert(l:text, '^ *(\?\(\a\))\? \+.\+', s:default_priority)
      let l:tmp = substitute(l:text, '^ *(\?\a)\? \+', '', '')
      let l:date = s:matchpert(l:tmp, '^ *\(' . l:date_ptn . '\) \+.\+', s:today())
      let l:desc = substitute(l:tmp, '^ *' . l:date_ptn . ' \+', '', '')
      let l:todo = 'o (' . l:priority . ') ' . l:date . ' ' . l:desc
      call setline(l:line + 1, l:todo)
    endif
  endfor
endfunction

nnoremap <buffer> gt :call TodoToggleComplete()<CR>

augroup TodoText
  autocmd!
  autocmd InsertLeave <buffer> call TodoTextFormatter()
augroup END
