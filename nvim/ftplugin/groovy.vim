scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

" タブ文字の幅
setlocal tabstop=2

" vim が挿入するインデントの文字数
setlocal shiftwidth=2

" <Tab> キーを押した時の空白文字数
setlocal softtabstop=2

let &cpo = s:save_cpo
