local M = {}

---@class eyes.Options
---@field palette "dark"|"light
---@field features eyes.Options.Features
---@field transparent boolean
---@field extend eyes.Options.Extend
M.options = {
	autoload = true,
	palette = "dark",
	transparent = false,

	---@class eyes.Options.Features
	---@field plugins eyes.Options.Features.Plugins
	features = {
		editor = true,
		diff = true,
		terminal = true,
		syntax = true,
		spell = true,
		diagnostics = true,

		---@class eyes.Options.Features.Plugins
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
			oil = true,
			render_markdown = true,
			snacks = true,
			telescope = true,
			undo_tree = true,
			web_devicons = true,
		},
	},

	---@class eyes.Options.Extend
	---@field highlights table<string, vim.api.keyset.highlight>
	---@field palette eyes.Palette
	extend = {
		highlights = {},
		palette = {},
	},
}

---@param options? eyes.Options
M.setup = function(options)
	M.options = vim.tbl_deep_extend("force", M.options, options or {})

	if M.options.autoload then
		vim.cmd([[colorscheme eyes]])
	end
end

return M
