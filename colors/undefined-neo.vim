" Vim color scheme file
" Name: undefined-neo
" Maintainer: al3x-13

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "undefined-neo"

lua require("undefined_neo").setup()
