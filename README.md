<h1 align="center">
  <p align="center">eyes.nvim</p>
  <p>&lt;O&gt;</p>
</h1>

<p align="center">Monochrome colorscheme for Neovim.</p>

<p align="center">
  <img alt="Preview Dark" src="https://files.catbox.moe/jwm9kk.png" width=1000>
  <img alt="Preview Light" src="https://files.catbox.moe/i60s89.png" width=1000>
</p>

## Features

- Dark and light pallets
- Configurable
- Extensible
- Support for lualine, bufferline, and various plugins

## Installation

Installing using [lazy](https://github.com/folke/lazy.nvim)

```lua
{
  "amedoeyes/eyes.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

Applying the colorscheme to [lualine](https://github.com/nvim-lualine/lualine.nvim)

```lua
require("lualine").setup({
  options = {
    theme = "eyes"
  }
})
```

Applying the colorscheme to [bufferline](https://github.com/akinsho/bufferline.nvim)

```lua
require("bufferline").setup({
  highlights = highlights = require("eyes.highlights.plugins.bufferline"),
})
```

## Configurations

Defaults

```lua
require("eyes").setup({
  --autoloads the colorscheme
  autoload = true,
  --changes the palette of the colorscheme
  --"dark" or "light"
  pallete = "dark",

  --toggles monochrome for these elements
  features = {
    editor = true,
    terminal = true,
    syntax = true,
    spell = true,
    diagnostics = true,

    plugins = {
      cmp = true,
      codeium = true,
      dap_ui = true,
      flash = true,
      illuminate = true,
      indent_blankline = true,
      lazy = true,
      leap = true,
      mason = true,
      mini_indentscope = true,
      neo_tree = true,
      noice = true,
      notify = true,
      telescope = true,
      undo_tree = true,
      web_devicons = true,
    },
  },

  --extends/overwrites highlights and palette
  extend = {
    highlights = {},
    palette = {},
  },
})
```

Example using [lazy](https://github.com/folke/lazy.nvim)

```lua
{
  "amedoeyes/eyes.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    features = {
      diagnostics = false,

      plugins = {
        neo_tree = false,
        illuminate = false,
      }
    },
    extend = {
        highlights = {
          Normal = { bg = "#101010", fg = "#808080" },
          CursorLine = { bg = "#202020" },
          Type = { italic = true },
        },
        palette = {
          hex00 = "#101010",
        },
    },
  },
}

```
