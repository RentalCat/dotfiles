scriptencoding utf-8

set nospell

" options
" Disable URI checking. (default: 0)
let g:spelunker_disable_uri_checking = 1

" Disable email-like words checking. (default: 0)
let g:spelunker_disable_email_checking = 1

" Disable account name checking, e.g. @foobar, foobar@. (default: 0)
" NOTE: Spell checking is also disabled for JAVA annotations.
let g:spelunker_disable_account_name_checking = 1

" Disable acronym checking. (default: 0)
let g:spelunker_disable_acronym_checking = 1

" Disable checking words in backtick/backquote. (default: 0)
let g:spelunker_disable_backquoted_checking = 1

" key mapping
silent! vmap <unique> zg <Plug>(add-spelunker-good)
silent! nmap <unique> zg <Plug>(add-spelunker-good-nmap)
silent! vmap <unique> zug <Plug>(undo-spelunker-good)
silent! nmap <unique> zug <Plug>(undo-spelunker-good-nmap)
silent! vmap <unique> zw <Plug>(add-spelunker-bad)
silent! nmap <unique> zw <Plug>(add-spell-bad-nmap)
silent! vmap <unique> zuw <Plug>(undo-spelunker-bad)
silent! nmap <unique> zuw <Plug>(undo-spelunker-bad-nmap)
silent! nmap <unique> ]s <Plug>(spelunker-jump-next)
silent! nmap <unique> zn <Plug>(spelunker-jump-next)
silent! nmap <unique> [s <Plug>(spelunker-jump-prev)
silent! nmap <unique> zp <Plug>(spelunker-jump-next)

function! s:projectDir()
  try
    " depended on: airblade/vim-rooter
    return FindRootDirectory()
  catch /E117.*/
    return ''
  endtry
endfunction

function! s:get_project_spellfiles()
  let l:project_dir = s:projectDir()
  if empty(l:project_dir) | return [] | endif
  return split(glob(l:project_dir . '**/.vimspell*.utf-8.add'), '\n')
endfunction

function! s:safe_get_file_path(file_path) abort
  return filereadable(a:file_path) ? a:file_path : ''
endfunction

function! s:get_spell_files() abort
  let l:spell_dir = GetSpellDir()
  let l:files = [
  \   s:safe_get_file_path(l:spell_dir . '/.tmp.utf-8.add'),
  \   s:safe_get_file_path(l:spell_dir . '/GLOBAL.utf-8.add'),
  \   s:safe_get_file_path(l:spell_dir . '/' . &filetype . '.utf-8.add'),
  \ ] + s:get_project_spellfiles()
  return join(filter(l:files, 'v:val != ""'), ',')
endfunction

augroup mySpelunker
  autocmd!
  autocmd BufEnter * execute 'setlocal spellfile+=' . s:get_spell_files() | call spelunker#check()
  autocmd Syntax *
  \ highlight SpelunkerSpellBad cterm=underline ctermfg=88 gui=underline guifg=#9e0000 |
  \ highlight SpelunkerComplexOrCompoundWord cterm=underline ctermfg=88 gui=underline guifg=#9e0000
augroup END
