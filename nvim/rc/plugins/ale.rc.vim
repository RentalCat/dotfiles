scriptencoding utf-8

let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_command_wrapper = 'nice -n5'
let g:ale_linters = {
  \   'html': ['tidy'],
  \   'python': ['flake8', 'mypy'],
  \   'rust': ['rustc'],
  \   'vim': ['vint'],
  \ }
let g:ale_max_signs = 50
let g:ale_maximum_file_size = 1048576  " 1MB以上のファイルはlint走らせない
