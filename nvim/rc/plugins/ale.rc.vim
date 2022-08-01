scriptencoding utf-8

" lint
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_command_wrapper = 'nice -n5'
let g:ale_linters = {
  \   'go': ['gometalinter'],
  \   'html': ['tidy'],
  \   'python': ['flake8', 'mypy'],
  \   'rust': ['rustc'],
  \   'typescript': ['tsserver'],
  \   'vim': ['vint'],
  \ }
let g:ale_fixers = {
  \   'go': ['gofmt', 'goimports', 'golines'],
  \ }
let g:ale_fix_on_save = 1
let g:ale_max_signs = 50
let g:ale_maximum_file_size = 1048576  " 1MB以上のファイルはlint走らせない

" for go
let g:ale_go_gometalinter_options = '--fast --enable=staticcheck --enable=gosimple --enable=unused'
