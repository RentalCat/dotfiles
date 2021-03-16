scriptencoding utf-8

set nospell

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
  autocmd BufEnter * execute 'setlocal spellfile+=' . s:get_spell_files()
augroup END

" execute 'set spellfile=' . GetSpellDir() . '/vim.utf-8.add'
