local M = {}

---@class Options
---@field palette "dark"|"light
---@field toggle Toggle
---@field extend Extend
M.options = {
	autoload = true,
	palette = "dark",

	---@class Toggle
	---@field plugins TogglePlugins
	toggle = {
		diagnostics = true,
		spell = true,
		terminal = true,

		---@class TogglePlugins
		plugins = {
			cmp = true,
			codeium = true,
			dap = true,
			devicons = true,
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
			null_ls = true,
			telescope = true,
			treesitter = true,
			undotree = true,
		},
	},

	---@class Extend
	---@field highlights table<string, Highlight>
	---@field palette PaletteDark | PaletteLight
	extend = {
		highlights = {},
		palette = {},
	},
}

---@param options? Options
M.setup = function(options)
	M.options = vim.tbl_deep_extend("force", M.options, options or {})

	if M.options.autoload then
		vim.cmd([[colorscheme eyes]])
	end
end

return M
