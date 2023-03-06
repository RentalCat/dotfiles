scriptencoding utf-8
let s:save_cpo = &cpoptions
set cpoptions&vim

" preservim/vim-markdown プラグインを使用しているのでこっちを参照する
" ref: https://github.com/preservim/vim-markdown/blob/master/syntax/markdown.vim
" タグ系はコメントと同じ色にしておく
highlight link mkdHeading Comment
highlight link mkdBold Comment
highlight link mkdItalic Comment
highlight link mkdBoldItalic Comment

let &cpoptions = s:save_cpo
unlet s:save_cpo
scriptencoding utf-8
