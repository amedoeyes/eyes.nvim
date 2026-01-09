local M = {}

local utility = require("eyes.utility")

---@type eyes.Highlights.Core[]
local CORE_MODULES = {
	"diagnostics",
	"diff",
	"editor",
	"spell",
	"syntax",
	"terminal",
	"treesitter",
}

---@type table<eyes.Highlights.Plugin,string|string[]>
local PLUGINS_MAP = {
	["blink.cmp"] = "blink_cmp",
	["codeium.nvim"] = "codeium_nvim",
	["flash.nvim"] = "flash_nvim",
	["fzf-lua"] = "fzf_lua",
	["indent-blankline.nvim"] = "indent_blankline_nvim",
	["lazy.nvim"] = "lazy_nvim",
	["leap.nvim"] = "leap_nvim",
	["mason.nvim"] = "mason_nvim",
	["mini.clue"] = "mini_clue",
	["mini.files"] = "mini_files",
	["mini.icons"] = "mini_icons",
	["mini.indentscope"] = "mini_indentscope",
	["mini.nvim"] = { "mini_clue", "mini_files", "mini_icons", "mini_indentscope", "mini_pick" },
	["mini.pick"] = "mini_pick",
	["neo-tree.nvim"] = "neo_tree_nvim",
	["noice.nvim"] = "noice_nvim",
	["nvim-cmp"] = "nvim_cmp",
	["nvim-dap-ui"] = "nvim_dap_ui",
	["nvim-notify"] = "nvim_notify",
	["nvim-web-devicons"] = "nvim_web_devicons",
	["oil.nvim"] = "oil_nvim",
	["render-markdown.nvim"] = "render_markdown_nvim",
	["snacks.nvim"] = "snacks_nvim",
	["telescope.nvim"] = "telescope_nvim",
	["undotree"] = "undotree",
	["vim-illuminate"] = "vim_illuminate",
}

M.setup = function()
	local opts = require("eyes.config").options

	local core = {}
	local plugins = {}

	if type(opts.highlights.core) == "boolean" and opts.highlights.core then
		core = CORE_MODULES
	elseif type(opts.highlights.core) == "table" then
		core = opts.highlights.core --[[@as (eyes.Highlights.Core[])]]
	elseif type(opts.highlights.core) == "function" then
		core = opts.highlights.core(CORE_MODULES)
	end

	if type(opts.highlights.plugins) == "boolean" and opts.highlights.plugins then
		plugins = vim.tbl_keys(PLUGINS_MAP)
	elseif type(opts.highlights.plugins) == "table" then
		plugins = opts.highlights.plugins --[[@as (eyes.Highlights.Plugin[])]]
	elseif type(opts.highlights.plugins) == "function" then
		plugins = opts.highlights.plugins(vim.tbl_keys(PLUGINS_MAP))
	end

	plugins = vim
		.iter(plugins)
		:map(function(p)
			return PLUGINS_MAP[p]
		end)
		:flatten()
		:totable()

	require("eyes.highlights.links").setup()

	for _, module in ipairs(core) do
		local highlights = require("eyes.highlights.core." .. module)
		if type(highlights) == "function" then
			highlights()
		else
			for key, value in pairs(highlights) do
				utility.hl(key, value)
			end
		end
	end

	for _, plugin in ipairs(plugins) do
		local highlights = require("eyes.highlights.plugins." .. plugin)
		if type(highlights) == "function" then
			highlights()
		else
			for key, value in pairs(highlights) do
				utility.hl(key, value)
			end
		end
	end

	if opts.transparent then
		utility.hl("Normal", utility.extend("Normal", { bg = "none" }))
	end

	if opts.extend.highlights then
		for key, value in pairs(opts.extend.highlights) do
			utility.hl(key, utility.extend(key, value))
		end
	end
end

return M
