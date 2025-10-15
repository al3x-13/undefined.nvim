" Vim color scheme file
" Name: undefined
" Maintainer: al3x-13

" Clear existing highlights
if exists("syntax_on")
  syntax reset
endif

" Set theme name
let g:colors_name = "undefined"

" Load the Lua module
lua require("undefined").setup()
