local M = {}

---@class Options
---@field palette "dark"|"light
---@field toggle Toggle
---@field extend Extend
M.options = {
	palette = "dark",
	autoload = true,

	---@class Toggle
	---@field plugins TogglePlugins
	toggle = {
		terminal = true,
		diagnostics = true,
		spell = true,

		---@class TogglePlugins
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
