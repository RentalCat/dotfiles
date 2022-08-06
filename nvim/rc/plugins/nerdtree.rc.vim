scriptencoding utf-8
"let g:NERDTreeShowHidden=1
let g:NERDTreeWinPos = 'left'
"let g:NERDTreeDirArrows=0
let g:NERDTreeIgnore = ['\.clean$', '\.swp$', '\.bak$', '\~$', '\.pyc', '\.orig', '\.meta', '__pycache__']
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeAutoDeleteBuffer = 1

" if called vim without filename, open nardtree.
augroup augroup_nerd_tree
  autocmd!
  " autocmd VimEnter * if !argc() | NERDTree | endif
  autocmd BufEnter * if (winnr('$') == 1 && exists('b:NERDTreeType') &&
        \                b:NERDTreeType == 'primary') | q | endif
augroup END

function! s:IsNerdTreeOpenInCurrentTab() abort
  for i in tabpagebuflist()
    if getbufvar(i, '&filetype') =~? 'nerdtree'
      return 1
    endif
  endfor
  return 0
endfunction

function! NerdTreeToggle() abort
  if s:IsNerdTreeOpenInCurrentTab()
    silent NERDTreeClose
  else
    silent NERDTreeFind
  endif
endfunction

" TODO NERDTreeOpen 時に別 window のファイル名が消えてしまうのをなんとかしたい
" TODO 意図した window に対してファイルが開かれていないので直す
