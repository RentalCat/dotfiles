scriptencoding utf-8
let s:save_cpo = &cpoptions
set cpoptions&vim

" 編集中のhelpファイルにのみ適用
if &l:buftype !=# 'help'
  setlocal list tabstop=8 shiftwidth=8 softtabstop=8 noexpandtab textwidth=78
  if exists('+colorcolumn')
    setlocal colorcolumn=+1
  endif
  if has('conceal')
    setlocal conceallevel=0
  endif
endif


" 目次生成コマンド
" ref: https://thinca.hatenablog.com/entry/20110903/1314982646
command! -buffer -bar GenerateContents call s:generate_contents()
function! s:generate_contents()
  let l:cursor = getpos('.')

  let l:plug_name = expand('%:t:r')
  let ja = expand('%:e') ==? 'jax'
  1

  if search(l:plug_name . '-contents\*$', 'W')
    silent .+1;/^=\{78}$/-1 delete _
    .-1
    put =''
  else
    /^License:/+1
    let l:header = printf('%s%s*%s-contents*', (ja ? "目次\t" : 'CONTENTS'),
    \              repeat("\t", 5), l:plug_name)
    silent put =['', repeat('=', 78), l:header]
    .+1
  endif

  let l:contents_pos = getpos('.')

  let l:lines = []
  while search('^\([=-]\)\1\{77}$', 'W')
    let l:head = getline('.') =~ '=' ? '' : '  '
    .+1
    let l:caption = matchlist(getline('.'), '^\([^\t]*\)\t\+\*\(\S*\)\*$')
    if !empty(l:caption)
      let [title, tag] = l:caption[1 : 2]
      call add(l:lines, printf("%s%s\t%s|%s|", l:head, title, l:head, tag))
    endif
  endwhile

  call setpos('.', l:contents_pos)

  silent put =l:lines + ['', '']
  call setpos('.', l:contents_pos)
  let l:len = len(l:lines)
  setlocal expandtab tabstop=32
  execute '.,.+' . l:len . 'retab'
  setlocal noexpandtab tabstop=8
  execute '.,.+' . l:len . 'retab!'

  call setpos('.', l:cursor)
endfunction
