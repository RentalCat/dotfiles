scriptencoding utf-8
" init.rc.vim
" 起動時のみ実行される

let s:is_windows = has('win16') || has('win32') || has('win64')
let s:is_mac = !s:is_windows && !has('win32unix')
      \ && (has('mac') || has('macunix') || has('gui_macvim')
      \     || (!executable('xdg-open') && system('uname') =~? '^darwin'))

function! IsWindows() abort
  return s:is_windows
endfunction

function! IsMac() abort
  return s:is_mac
endfunction

" Windows でもパスの区切り文字をスラッシュに変更
if IsWindows()
  set shellslash
endif

" ディレクトリ関係 ------------------------------------------------------------
let s:nvim_rc_dir =  expand('<sfile>:p:h')
let s:nvim_dir = fnamemodify(s:nvim_rc_dir . '/../', ':p:h')
function! GetNvimrcDir() abort
  return s:nvim_rc_dir
endfunction

function! GetSafeDir(dir_path) abort
  if !isdirectory(a:dir_path)
    call mkdir(iconv(a:dir_path, &encoding, &termencoding), 'p')
  endif
  return expand(a:dir_path)
endfunction

function! GetCacheDir() abort
  return GetSafeDir(s:nvim_dir . '/.cache')
endfunction

function! GetTmpDir() abort
  return GetSafeDir(s:nvim_dir . '/.tmp')
endfunction

" 文字コード設定 --------------------------------------------------------------
" vim の内部文字コードを UTF-8 に
set encoding=utf8

" ファイルのエンコードを左から順に解決していく
set fileencodings=utf8,euc-jp,iso-2022-jp,shift_jis
