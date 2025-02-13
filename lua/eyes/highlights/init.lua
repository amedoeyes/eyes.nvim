local M = {}

local opts = require("eyes.config")
local utility = require("eyes.utility")

---@type table<eyes.Highlights.Plugins,string|string[]>
local plugins_map = {
	["blink.cmp"] = "blink_cmp",
	["codeium.nvim"] = "codeium_nvim",
	["flash.nvim"] = "flash_nvim",
	["fzf-lua"] = "fzf_lua",
	["indent-blankline.nvim"] = "indent_blankline_nvim",
	["lazy.nvim"] = "lazy_nvim",
	["leap.nvim"] = "leap_nvim",
	["mason.nvim"] = "mason_nvim",
	["mini.icons"] = "mini_icons",
	["mini.indentscope"] = "mini_indentscope",
	["mini.nvim"] = { "mini_icons", "mini_indentscope" },
	["neo-tree.nvim"] = "neo_tree",
	["noice.nvim"] = "noice_nvim",
	["nvim-cmp"] = "nvim_cmp",
	["nvim-dap-ui"] = "nvim_dap_ui",
	["nvim-notify"] = "nvim_notify",
	["nvim-web-devicons"] = "web_devicons",
	["oil.nvim"] = "oil",
	["render-markdown.nvim"] = "render_markdown_nvim",
	["snacks.nvim"] = "snacks_nvim",
	["telescope.nvim"] = "telescope_nvim",
	["undotree"] = "undotree",
	["vim-illuminate"] = "vim_illuminate",
}

M.setup = function()
	local core = {}
	local plugins = {}

	if type(opts.highlights.core) == "table" then
		core = opts.highlights.core
	elseif type(opts.highlights.core) == "string" and opts.highlights.core == "all" then
		core = { "diagnostics", "diff", "editor", "spell", "syntax", "terminal", "treesitter" }
	end

	-- credits to https://github.com/folke/tokyonight.nvim
	if type(opts.highlights.plugins) == "table" then
		for _, p in ipairs(opts.highlights.plugins) do
			if plugins_map[p] == nil then
				vim.notify("Unkown plugin: " .. p, vim.log.levels.ERROR)
			end
		end
		plugins = vim
			.iter(opts.highlights.plugins)
			:map(function(p)
				return plugins_map[p]
			end)
			:flatten()
			:totable()
	elseif type(opts.highlights.plugins) == "string" then
		local load = opts.highlights.plugins
		if load == "all" then
			plugins = vim.iter(vim.tbl_values(plugins_map)):flatten():totable()
		elseif load == "auto" then
			if package.loaded.lazy then
				plugins = vim
					.iter(vim.tbl_keys(require("lazy.core.config").plugins))
					:filter(function(p)
						return plugins_map[p] ~= nil
					end)
					:map(function(p)
						return plugins_map[p]
					end)
					:flatten()
					:totable()
			elseif package.loaded["mini.deps"] then
				plugins = vim
					.iter(require("mini.deps").get_session())
					:filter(function(p)
						return plugins_map[p.name] ~= nil
					end)
					:map(function(p)
						return plugins_map[p.name]
					end)
					:flatten()
					:totable()
			end
		end
	end

	require("eyes.highlights.links").setup()

	for _, module in ipairs(core) do
		require("eyes.highlights.core." .. module).setup()
	end

	for _, plugin in ipairs(plugins) do
		require("eyes.highlights.plugins." .. plugin).setup()
	end

	if opts.transparent then
		utility.hl("Normal", utility.extend("Normal", { bg = "none" }))
	end

	if opts.extend.highlights then
		for name, highlight in pairs(opts.extend.highlights) do
			utility.hl(name, utility.extend(name, highlight))
		end
	end
end

return M
