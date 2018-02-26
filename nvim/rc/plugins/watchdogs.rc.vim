scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


let g:watchdogs_check_BufWritePost_enable = 1

if !exists('g:quickrun_config')
  let g:quickrun_config = deepcopy(g:quickrun#default_config)
endif

" lightline 用 hook
let g:quickrun_config['watchdogs_checker/_'] = {
      \   'runner' : 'vimproc',
      \   'runner/vimproc/updatetime' : 40,
      \   'outputter/quickfix/open_cmd' : '',
      \   'hook/nuko/enable': 1,
      \   'hook/nuko/waight': 20,
      \   'hook/qfstatusline_update/enable_exit': 1,
      \   'hook/qfstatusline_update/priority_exit': 4,
      \   'hook/qfsigns_update/enable_exit': 1,
      \   'hook/qfsigns_update/priority_exit': 3,
      \ }

let g:quickrun_config = watchdogs#setup(g:quickrun_config)


let &cpo = s:save_cpo
unlet s:save_cpo
