
let g:deoplete#enable_at_startup = 1

call deoplete#custom#option({
\   'auto_complete_delay': 0,
\   'min_pattern_length': 1,
\ })

" 辞書設定: 読み込む辞書を追加
setlocal dictionary+=/usr/share/dict/words
" 辞書設定: 辞書ファイルはソートされてるので deoplete ではソートしない
call deoplete#custom#source('dictionary', 'sorters', [])
" 辞書設定: 短い単語は補完しない
call deoplete#custom#source('dictionary', 'min_pattern_length', 4)
" 辞書設定: 完全一致以外は候補から除外
call deoplete#custom#source('dictionary', 'matchers', ['matcher_head'])
