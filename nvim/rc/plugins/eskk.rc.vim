" 日本語入力補助ツール eskk の使い方
" <C-j>   : SKK の起動 / [アスキーモード] から [かなモード] に切り替え
" q       : [かなモード] <=> [カナモード] の切り替え
" l       : [かな/カナモード] から [アスキーモード] に切り替え
"
" 変換モード
"   [かな/カナモード] 時にキー入力を大文字から初めることで変換モードになる
"  ex) Bunsyou wo NihongoNyuuryoku nisuru => '文章を日本語入力にする'


let g:eskk#directory = GetSafeDir(GetCacheDir() . '/eskk')

" ユーザ辞書
let s:user_jisyo_path = g:eskk#directory . '/skk-jisyo'
if !filereadable(s:user_jisyo_path)
  echomsg system('touch ' . s:user_jisyo_path)
endif

" eskk 辞書
let g:eskk#dictionary = {
\ 'path': g:eskk#directory . '/skk-jisyo',
\ 'sorted': 0,
\ 'encoding': 'utf-8',
\ }
let s:eskk_jisyo_filename = "/SKK-JISYO.L"
let s:eskk_jisyo_filepath = g:eskk#directory . s:eskk_jisyo_filename
if !filereadable(s:eskk_jisyo_filepath)
  " eskk の辞書をインストールする
  let s:eskk_jisyo_url = 'https://skk-dev.github.io/dict/SKK-JISYO.L.gz'
  let s:eskk_jisyo_tmppath = GetTmpDir() . s:eskk_jisyo_filename
  echomsg system('curl ' . s:eskk_jisyo_url . ' > ' . s:eskk_jisyo_tmppath . '.gz')
  echomsg system('gzip -d ' . s:eskk_jisyo_tmppath . '.gz')
  echomsg system('cp ' . s:eskk_jisyo_tmppath . ' ' . s:eskk_jisyo_filepath)
  echomsg system('rm -f ' . s:eskk_jisyo_tmppath)
endif
let g:eskk#large_dictionary = {
\ 'path': s:eskk_jisyo_filepath,
\ 'sorted': 1,
\ 'encoding': 'euc-jp',
\ }
let g:eskk#enable_completion = 1

let g:eskk#server = {
\ 'host': 'localhost',
\ 'port': 55100,
\ 'type': 'notfound',
\ }
" タブキー押下で変換する
let g:eskk#tab_select_completion = 1
