<h1 align="center">
 <p align="center">eyes.nvim</p>
 <p>&lt;O&gt;</p>
</h1>

<p align="center">A monochrome colorscheme for Neovim.</p>

<p align="center">
 <img alt="Preview Dark" src="https://files.catbox.moe/sjf8sf.png" width=1000>
 <img alt="Preview Light" src="https://files.catbox.moe/93mr9d.png" width=1000>
</p>

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
    --changes the palette of the colorscheme
    --"dark" or "light"
    pallete = "dark",
    --autoloads the colorscheme
    autoload = true,

    --toggles monochrome for these elements
    toggle = {
        terminal = true,
        diagnostics = true,
        spell = true,

        plugins = {
            lazy = true,
            mason = true,
            null_ls = true,
            cmp = true,
            telescope = true,
            neo_tree = true,
            noice = true,
            notify = true,
            devicons = true,
            leap = true,
            illuminate = true,
            indent_blankline = true,
            mini_indentscope = true,
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

## Recommendations

### Use borders when possible for better readability

LSP diagnostics and hover:

```lua
local border = "rounded"

vim.diagnostic.config({
    float = {
        border = border,
    },
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = border,
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = border,
})
```

[noice](https://github.com/folke/noice.nvim)

```lua
require("noice").setup({
    presets = {
        lsp_doc_border = true,
    }
})
```

[cmp](https://github.com/hrsh7th/nvim-cmp)

```lua
require("cmp").setup({
    window = {
        completion = cmp.config.window.bordered({
            winhighlight = "FloatBorder:FloatBorder",
        }),
        documentation = cmp.config.window.bordered({
            winhighlight = "FloatBorder:FloatBorder",
        }),
    },
})
```

[lazy](https://github.com/folke/lazy.nvim)

```lua
require("lazy").setup("plugins", {
    ui = {
        border = "rounded",
    },
})
```

[mason](https://github.com/williamboman/mason.nvim)

```lua
require("mason").setup({
    ui = {
        border = "rounded",
    },
})
```

[null_ls](https://github.com/jose-elias-alvarez/null-ls.nvim)

```lua
require("mason").setup({
    border = "rounded",
})
```

[toggleterm](https://github.com/akinsho/toggleterm.nvim)

```lua
require("toggleterm").setup({
    float_opts = {
        border = "rounded",
    },

    highlights = {
        FloatBorder = {
            link = "FloatBorder",
        },
    },
})
```

[which-key](https://github.com/folke/which-key.nvim)

```lua
require("which-key").setup({
    window = {
        border = "rounded",
    },
})
```
