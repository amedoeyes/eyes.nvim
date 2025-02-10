local M = {}

---@type table<eyes.Highlights.Plugins,string>
local plugins_map = {
	blink_cmp = "blink.cmp",
	cmp = "nvim-cmp",
	codeium = "codeium.nvim",
	dap_ui = "nvim-dap-ui",
	flash = "flash.nvim",
	fzf = "fzf-lua",
	helpview = "helpview.nvim",
	illuminate = "vim-illuminate",
	indent_blankline = "indent-blankline.nvim",
	lazy = "lazy.nvim",
	leap = "leap.nvim",
	markview = "markview.nvim",
	mason = "mason.nvim",
	mini_icons = "mini.icons",
	mini_indentscope = "mini.indentscope",
	neo_tree = "neo-tree.nvim",
	noice = "noice.nvim",
	notify = "nvim-notify",
	oil = "oil.nvim",
	render_markdown = "render-markdown.nvim",
	snacks = "snacks.nvim",
	telescope = "telescope.nvim",
	undotree = "undotree",
	web_devicons = "nvim-web-devicons",
}

M.setup = function()
	local opts = require("eyes.config").options
	local utility = require("eyes.utility")
	local core = {}
	local plugins = {}

	if type(opts.highlights.core) == "table" then
		---@diagnostic disable-next-line: cast-local-type
		core = opts.highlights.core
	elseif type(opts.highlights.core) == "string" and opts.highlights.core == "all" then
		core = { "diagnostics", "diff", "editor", "spell", "syntax", "terminal" }
	end

	-- credits to https://github.com/folke/tokyonight.nvim
	if type(opts.highlights.plugins) == "table" then
		---@diagnostic disable-next-line: cast-local-type
		plugins = opts.highlights.plugins
	elseif type(opts.highlights.plugins) == "string" then
		local load = opts.highlights.plugins
		if load == "all" then
			for plugin, _ in pairs(plugins_map) do
				table.insert(plugins, plugin)
			end
		elseif load == "auto" then
			if package.loaded.lazy then
				local lazy_plugins = require("lazy.core.config").plugins
				for plugin, name in pairs(plugins_map) do
					if lazy_plugins[name] then
						table.insert(plugins, plugin)
					end
				end
				if lazy_plugins["mini.nvim"] then
					for plugin, _ in pairs(plugins_map) do
						if plugin:find("^mini_") then
							table.insert(plugins, plugin)
						end
					end
				end
			elseif package.loaded["mini.deps"] then
				local mini_plugins = vim
					.iter(require("mini.deps").get_session())
					:map(function(p)
						return p.name
					end)
					:totable()
				for plugin, name in pairs(plugins_map) do
					if vim.tbl_contains(mini_plugins, name) then
						table.insert(plugins, plugin)
					end
				end
				if vim.tbl_contains(mini_plugins, "mini.nvim") then
					for plugin, _ in pairs(plugins_map) do
						if plugin:find("^mini_") then
							table.insert(plugins, plugin)
						end
					end
				end
			end
		end
	end

	require("eyes.highlights.links").setup()

	---@diagnostic disable-next-line: param-type-mismatch
	for _, module in ipairs(core) do
		require("eyes.highlights.core." .. module).setup()
	end

	---@diagnostic disable-next-line: param-type-mismatch
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
