---@meta

---@class eyes.Palette
---@field hex00 string?
---@field hex01 string?
---@field hex02 string?
---@field hex03 string?
---@field hex04 string?
---@field hex05 string?
---@field hex06 string?
---@field hex07 string?
---@field hex08 string?
---@field hex09 string?
---@field hex10 string?

---@alias eyes.Highlights.Core "diagnostics"|"diff"|"editor"|"spell"|"syntax"|"terminal"|"treesitter"
---@alias eyes.Highlights.Plugins
---| "blink_cmp"
---| "cmp"
---| "codeium"
---| "dap_ui"
---| "flash"
---| "fzf"
---| "helpview"
---| "illuminate"
---| "indent_blankline"
---| "lazy"
---| "leap"
---| "markview"
---| "mason"
---| "mini_icons"
---| "mini_indentscope"
---| "neo_tree"
---| "noice"
---| "notify"
---| "oil"
---| "render_markdown"
---| "snacks"
---| "telescope"
---| "undotree"
---| "web_devicons"

---@class eyes.Options
---@field transparent boolean
---@field highlights {
---  core: eyes.Highlights.Core[]|"all",
---  plugins: eyes.Highlights.Plugins[]|"all"|"auto",
---}
---@field extend {
--- highlights?: table<string, vim.api.keyset.highlight>,
--- palette?: eyes.Palette,
---}
