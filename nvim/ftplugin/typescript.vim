scriptencoding utf-8
let s:save_cpo = &cpoptions
set cpoptions&vim

" タブ文字の幅
setlocal tabstop=4

" vim が挿入するインデントの文字数
setlocal shiftwidth=4

" <Tab> キーを押した時の空白文字数
setlocal softtabstop=4

let &cpoptions = s:save_cpo

