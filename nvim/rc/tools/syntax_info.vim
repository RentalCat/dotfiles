function! s:get_syn_id(transparent)
  let l:synid = synID(line('.'), col('.'), 1)
  if a:transparent
    return synIDtrans(l:synid)
  else
    return l:synid
  endif
endfunction

function! s:get_syn_attr(synid)
  let l:name = synIDattr(a:synid, 'name')
  let l:ctermfg = synIDattr(a:synid, 'fg', 'cterm')
  let l:ctermbg = synIDattr(a:synid, 'bg', 'cterm')
  let l:guifg = synIDattr(a:synid, 'fg', 'gui')
  let l:guibg = synIDattr(a:synid, 'bg', 'gui')
  return {
  \   'name': l:name,
  \   'ctermfg': l:ctermfg,
  \   'ctermbg': l:ctermbg,
  \   'guifg': l:guifg,
  \   'guibg': l:guibg
  \ }
endfunction

function! s:get_syn_info()
  let baseSyn = s:get_syn_attr(s:get_syn_id(0))
  echo 'name: ' . baseSyn.name .
  \   ' ctermfg: ' . baseSyn.ctermfg .
  \   ' ctermbg: ' . baseSyn.ctermbg .
  \   ' guifg: ' . baseSyn.guifg .
  \   ' guibg: ' . baseSyn.guibg
  let linkedSyn = s:get_syn_attr(s:get_syn_id(1))
  echo 'link to'
  echo 'name: ' . linkedSyn.name .
  \   ' ctermfg: ' . linkedSyn.ctermfg .
  \   ' ctermbg: ' . linkedSyn.ctermbg .
  \   ' guifg: ' . linkedSyn.guifg .
  \   ' guibg: ' . linkedSyn.guibg
endfunction

command! SyntaxInfo call s:get_syn_info()
