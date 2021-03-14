
syntax match TodoTextPriority /^(\a)/
syntax match TodoTextContext / @\w\+/ms=s+1
syntax match TodoTextProject / +\+\w\+/ms=s+1
syntax match TodoTextDate /\d\{4}-\d\{2}-\d\{2}/
syntax match TodoTextSpecialKeyValueTag / \w\+:/

syntax match TodoTextCompleteTask /^x.*/

highlight link TodoTextPriority Tag
highlight link TodoTextContext Constant
highlight link TodoTextProject Define
highlight link TodoTextDate Title
highlight link TodoTextSpecialKeyValueTag Debug
highlight link TodoTextDueToday Keyword

highlight link TodoTextCompleteTask Comment
