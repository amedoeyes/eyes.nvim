<h1 align="center">
  <code>&lt;0&gt;</code>
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
- [mini.clue](https://github.com/nvim-mini/mini.clue)
- [mini.files](https://github.com/nvim-mini/mini.files)
- [mini.icons](https://github.com/nvim-mini/mini.icons)
- [mini.indentscope](https://github.com/nvim-mini/mini.indentscope)
- [mini.pick](https://github.com/nvim-mini/mini.pick)
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

```lua
vim.pack.add({
  "https://github.com/amedoeyes/eyes.nvim",
})
```

<details>
<summary>lualine</summary>

```lua
require("lualine").setup({
  options = {
    theme = "eyes"
  }
})
```

</details>

<details>
<summary>bufferline</summary>

```lua
require("bufferline").setup({
  highlights = require("eyes.highlights.plugins.bufferline"),
})
```

</details>

## Configurations

### Defaults

```lua
{
  transparent = false,
  -- boolean to load or disable all modules/plugins
  -- table of modules/plugins to load
  -- function that takes all modules/plugins and returns a table of modules/plugins to load
  highlights = {
    core = true,
    plugins = true,
  },
  extend = {
    highlights = {},
    palette = {},
  },
}
```

<details>
<summary>Core modules</summary>

```lua
---@alias eyes.Highlights.Core "diagnostics"|"diff"|"editor"|"spell"|"syntax"|"terminal"|"treesitter"
```

</details>

<details>
<summary>Plugins</summary>

```lua
---@alias eyes.Highlights.Plugin
---| "blink.cmp"
---| "codeium.nvim"
---| "flash.nvim"
---| "fzf-lua"
---| "indent-blankline.nvim"
---| "lazy.nvim"
---| "leap.nvim"
---| "mason.nvim"
---| "mini.clue"
---| "mini.files"
---| "mini.icons"
---| "mini.indentscope"
---| "mini.nvim"
---| "mini.pick"
---| "neo-tree.nvim"
---| "noice.nvim"
---| "nvim-cmp"
---| "nvim-dap-ui"
---| "nvim-notify"
---| "nvim-web-devicons"
---| "oil.nvim"
---| "render-markdown.nvim"
---| "snacks.nvim"
---| "telescope.nvim"
---| "undotree"
---| "vim-illuminate"
```

</details>

### Examples

**Loading specific modules and plugins:**

```lua
{
  highlights = {
    core = { "editor", "syntax" },
    plugins = { "blink.cmp", "render-markdown.nvim", "oil.nvim" }
  },
}
```

**Auto loading plugins:**

```lua
{
  highlights = {
    plugins = function(plugins)
      return vim
        .iter(vim.pack.get())
        :map(function(p) return p.spec.name end)
        :filter(function(p) return vim.tbl_contains(plugins, p) end)
        :totable()
    end,
  },
}
```

**Extending:**

```lua
{
  extend = {
    highlights = {
      Normal = { fg = "#808080" },
      CursorLine = { bg = "#202020" },
      ["@type"] = { italic = true },
    },
    palette = {
      hex00 = "#101010",
    },
  },
}
```

## Issues and Requests

If you encounter an issue or have a feature request, please feel free to [open an issue](https://github.com/amedoeyes/eyes.nvim/issues).
