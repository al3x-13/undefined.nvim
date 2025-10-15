# undefined.nvim

Dark colorscheme for neovim written in lua. Works with lsp, treesitter and lualine.

__NOTE__: This was mostly vibe-coded.

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "al3x-13/undefined.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme undefined]])
  end,
}
```

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use {
  "al3x-13/undefined.nvim",
  config = function()
    vim.cmd([[colorscheme undefined]])
  end,
}
```

## Configuration

The theme supports transparent backgrounds:

```lua
require("undefined").setup({
  transparent_background = true,
})
```

## Lualine

To use the lualine theme:

```lua
require('lualine').setup {
  options = {
    theme = 'undefined'
  }
}
```
