<h1 align="center">
  <p>&lt;O&gt;</p>
</h1>

<p align="center">Monochrome colorscheme for Neovim</p>

| Dark                                         | Light                                         |
| -------------------------------------------- | --------------------------------------------- |
| ![dark](https://files.catbox.moe/jwm9kk.png) | ![light](https://files.catbox.moe/i60s89.png) |

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
  autoload = true,
  palette = "dark" -- "dark" or "light",
  transparent = false,
  highlights = {
    -- table of modules to load or "all" to load them all
    -- modules: { "diagnostics", "diff", "editor", "spell", "syntax", "terminal" }
    core = "all",
    -- table of plugins to load, "auto" to only load plugins installed with lazy or mini.deps or "all" to load them all
    -- list of plugins can be found in lua/eyes/highlights/plugins
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
    plugins = { "blink_cmp", "render_markdown", "oil" }
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
}
```

## Issues and Requests

If you encounter an issue or have a feature request, please feel free to [open an issue](https://github.com/amedoeyes/eyes.nvim/issues).
