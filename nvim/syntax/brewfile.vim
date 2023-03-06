if exists("b:current_syntax")
  finish
endif

syntax match brewfileComment   +#.*$+
syntax match brewfileString    +".*"+
syntax match brewfileString    +'.*'+
syntax match brewfileDirective +^\(brew\|cask\|tap\|mas\|cask_args\)+
" syntax keyword brewfileDirective brew cask tap mas cask_args

highlight def link brewfileComment   Comment
highlight def link brewfileString    String
highlight def link brewfileDirective Keyword

let b:current_syntax = "brewfile"
