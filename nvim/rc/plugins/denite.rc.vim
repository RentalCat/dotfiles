" 見た目変更
call denite#custom#option('default', 'prompt', '>')
" PreProc

call denite#custom#map('insert', "<C-t>", '<denite:nop>')
call denite#custom#map('insert', "<C-g>", '<denite:nop>')
call denite#custom#map('insert', "<C-j>", '<denite:move_to_next_line>')
call denite#custom#map('insert', "<C-k>", '<denite:move_to_previous_line>')
call denite#custom#map('insert', "<Down>", '<denite:move_to_next_line>')
call denite#custom#map('insert', "<Up>", '<denite:move_to_previous_line>')
call denite#custom#map('insert', "<C-d>", '<denite:scroll_window_downwards>')
call denite#custom#map('insert', "<C-u>", '<denite:scroll_page_forwards>')
call denite#custom#map('insert', "<C-a>", '<denite:move_caret_to_head>')

" greper tools settings
if executable('pt')
  " pt: The Platinum Searcher
  "   https://github.com/monochromegane/the_platinum_searcher
  call denite#custom#var('file_rec', 'command',
    \ ['pt', '--follow', '--nocolor', '--nogroup',
    \  (has('win32') ? '-g:' : '-g='), ''])
  call denite#custom#var('grep', 'command', ['pt'])
  call denite#custom#var('grep', 'default_opts',
    \ ['--nogroup', '--nocolor', '--smart-case'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', [])
  " call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
elseif executable('ag')
  " ag
  " MacOS  : `brew install ag`
  " CentOS : `rpm -ivh http://swiftsignal.com/packages/centos/6/x86_64/the-silver-searcher-0.14-1.el6.x86_64.rpm`
  " Ubuntu : `sudo apt-get install silversearcher-ag`
  call denite#custom#var('file_rec', 'command',
    \ ['ag', 'follow', '--nocolor', '--nogroup', '-g', ''])
  call denite#custom#var('grep', 'command', ['ag'])
  call denite#custom#var('grep', 'default_opts',
    \ ['-i', '--vimgrep'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
endif
" NOTE: hw (highway) is not supported.


" matcher tools settings
call denite#custom#source('_', 'matchers', ['matcher_fuzzy', 'sorter_rank'])
" call denite#custom#source('_', 'matchers', ['matcher_regexp'])
