<h1 align="center">
  <p>&lt;O&gt;</p>
</h1>

<p align="center">Monochrome colorscheme for Neovim</p>

| Dark                                                                                     | Light                                                                                     |
| ---------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| ![dark](https://github.com/user-attachments/assets/8048c8b8-4f8e-45d1-9b21-1f16e9e30c2b) | ![light](https://github.com/user-attachments/assets/b00bb56c-a298-4bce-acc9-b272bf02ff67) |

<details>
<summary>Supported Plugins</summary>

- [blink.cmp](https://github.com/Saghen/blink.cmp)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [codeium.nvim](https://github.com/Exafunction/codeium.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [leap.nvim](https://github.com/ggandor/leap.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [mini.icons](https://github.com/echasnovski/mini.icons)
- [mini.indentscope](https://github.com/echasnovski/mini.indentscope)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [oil.nvim](https://github.com/stevearc/oil.nvim)
- [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [snacks.nvim](https://github.com/folke/snacks.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [undotree](https://github.com/mbbill/undotree)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)

</details>

## Installation

Installing using [lazy](https://github.com/folke/lazy.nvim)

```lua
{
  "amedoeyes/eyes.nvim",
  -- only requird if using nvim-web-devicons for icons
  -- dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
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
  highlights = require("eyes.highlights.plugins.bufferline"),
})
```

## Configurations

Defaults:

```lua
{
  transparent = false,
  highlights = {
    -- table of modules to load or "all" to load them all
    -- modules: { "diagnostics", "diff", "editor", "spell", "syntax", "terminal", "treesitter" }
    core = "all",
    -- table of plugins to load, "auto" to only load plugins installed with lazy or mini.deps or "all" to load them all
    plugins = (package.loaded.lazy or package.loaded["mini.deps"]) and "auto" or "all",
  },
  -- extends/overwrites highlights and current palette
  extend = {
    highlights = {},
    palette = {},
  },
}
```

Example:

```lua
{
  transparent = true,
  highlights = {
    core = { "editor", "syntax" },
    plugins = { "blink.cmp", "render-markdown.nvim", "oil.nvim" }
  },
  extend = {
    highlights = {
      Normal = { fg = "#808080" },
      CursorLine = { bg = "#202020" },
      Type = { italic = true },
    },
    palette = {
      hex00 = "#101010",
    },
  },
}
```

## Issues and Requests

If you encounter an issue or have a feature request, please feel free to [open an issue](https://github.com/amedoeyes/eyes.nvim/issues).
