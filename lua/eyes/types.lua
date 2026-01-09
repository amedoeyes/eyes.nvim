---@meta

---@class eyes.Palette
---@field hex00 string|nil
---@field hex01 string|nil
---@field hex02 string|nil
---@field hex03 string|nil
---@field hex04 string|nil
---@field hex05 string|nil
---@field hex06 string|nil
---@field hex07 string|nil
---@field hex08 string|nil
---@field hex09 string|nil
---@field hex10 string|nil

---@alias eyes.Highlights.Core "diagnostics"|"diff"|"editor"|"spell"|"syntax"|"terminal"|"treesitter"

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

---@class eyes.Options
---@field transparent boolean
---@field highlights eyes.Options.Highlights
---@field extend eyes.Options.Extend

---@class eyes.Options.Highlights
---@field core boolean|eyes.Highlights.Core[]|(fun(modules: eyes.Highlights.Core[]): eyes.Highlights.Core[]),
---@field plugins boolean|eyes.Highlights.Plugin[]|(fun(plugins: eyes.Highlights.Plugin[]): eyes.Highlights.Plugin[])

---@class eyes.Options.Extend
---@field highlights table<string, vim.api.keyset.highlight>|nil
---@field palette eyes.Palette|nil
