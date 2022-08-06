scriptencoding utf-8
" conceal で見えなくなるので修正
syn region jsonKeyword matchgroup=jsonQuote start=/"/ end=/"\ze[[:blank:]\r\n]*\:/ contains=jsonEscape contained
syn region jsonString  matchgroup=jsonQuote start=/"/ skip=/\\\\\|\\"/ end=/"/  contained oneline contains=jsonEscape

highlight link Quote Comment
