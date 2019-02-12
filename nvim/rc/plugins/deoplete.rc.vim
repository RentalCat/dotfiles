
call deoplete#custom#option({
\   'auto_complete_delay': 0,
\   'min_pattern_length': 2,
\   'max_list': 100,
\ })

" 辞書設定: 読み込む辞書を追加
set dictionary+=/usr/share/dict/words
" 辞書設定: 辞書ファイルはソートされてるので deoplete ではソートしない
call deoplete#custom#source('dictionary', 'sorters', [])
" 辞書設定: 短い単語は補完しない
call deoplete#custom#source('dictionary', 'min_pattern_length', 4)
" 辞書設定: 完全一致以外は候補から除外
call deoplete#custom#source('dictionary', 'matchers', ['matcher_head'])

" for debug
" call deoplete#custom#source('vim', 'is_debug_enabled', 1)
" call deoplete#enable_logging('INFO', GetTmpDir() . '/deoplete.log')
" call deoplete#enable_logging('DEBUG', GetTmpDir() . '/deoplete.log')

" 設定が全部終わったら自動補完を有効にする
call deoplete#enable()
