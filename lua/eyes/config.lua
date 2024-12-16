local M = {}

---@class Options
---@field palette "dark"|"light
---@field features Features
---@field extend Extend
M.options = {
	autoload = true,
	palette = "dark",

	---@class Features
	---@field plugins Plugins
	features = {
		editor = true,
		diff = true,
		terminal = true,
		syntax = true,
		spell = true,
		diagnostics = true,

		---@class Plugins
		plugins = {
			blink_cmp = true,
			cmp = true,
			codeium = true,
			dap_ui = true,
			flash = true,
			fzf = true,
			helpview = true,
			illuminate = true,
			indent_blankline = true,
			lazy = true,
			leap = true,
			markview = true,
			mason = true,
			mini_icons = true,
			mini_indentscope = true,
			neo_tree = true,
			noice = true,
			notify = true,
			render_markdown = true,
			snacks = true,
			telescope = true,
			undo_tree = true,
			web_devicons = true,
		},
	},

	---@class Extend
	---@field highlights table<string, vim.api.keyset.highlight>
	---@field palette Palette
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
