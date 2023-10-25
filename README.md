<h1 align="center">
    <p align="center">eyes.nvim</p>
    <p>&lt;O&gt;</p>
</h1>

<p align="center">A monochrome colorscheme for Neovim.</p>

<p align="center">
    <img alt="Preview Dark" src="https://files.catbox.moe/jwm9kk.png" width=1000>
    <img alt="Preview Light" src="https://files.catbox.moe/i60s89.png" width=1000>
</p>

## Features

- Dark and light pallets
- Configurable
- Extensible
- Support for lualine and bufferline

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
    highlights = require("eyes.theme").bufferline,
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
    toggle = {
        diagnostics = true,
        spell = true,
        terminal = true,

        plugins = {
            cmp = true,
            codeium = true,
            dap = true,
            devicons = true,
            illuminate = true,
            indent_blankline = true,
            lazy = true,
            leap = true,
            mason = true,
            mini_indentscope = true,
            neo_tree = true,
            noice = true,
            notify = true,
            null_ls = true,
            telescope = true,
            undotree = true,
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
        toggle={
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
