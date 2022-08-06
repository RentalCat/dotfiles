scriptencoding utf-8
let s:save_cpo = &cpoptions
set cpoptions&vim

" フォーマット範囲の上限値: ファイルの何行目までフォーマットするか？
" let s:max_format_line = 100
" let s:default_priority = 'C'

" アルファベットをインクリメント・デクリメントできるように (優先度変更用)
setlocal nrformats+=alpha

" 色付けカラムはなし
setlocal colorcolumn=
