local M = {}

---@type table<string,eyes.Highlights.Plugins|eyes.Highlights.Plugins[]>
local plugins_map = {
	["blink.cmp"] = "blink_cmp",
	["codeium.nvim"] = "codeium",
	["flash.nvim"] = "flash",
	["fzf-lua"] = "fzf",
	["helpview.nvim"] = "helpview",
	["indent-blankline.nvim"] = "indent_blankline",
	["lazy.nvim"] = "lazy",
	["leap.nvim"] = "leap",
	["markview.nvim"] = "markview",
	["mason.nvim"] = "mason",
	["mini.icons"] = "mini_icons",
	["mini.indentscope"] = "mini_indentscope",
	["mini.nvim"] = { "mini_icons", "mini_indentscope" },
	["neo-tree.nvim"] = "neo_tree",
	["noice.nvim"] = "noice",
	["nvim-cmp"] = "cmp",
	["nvim-dap-ui"] = "dap_ui",
	["nvim-notify"] = "notify",
	["nvim-web-devicons"] = "web_devicons",
	["oil.nvim"] = "oil",
	["render-markdown.nvim"] = "render_markdown",
	["snacks.nvim"] = "snacks",
	["telescope.nvim"] = "telescope",
	["undotree"] = "undotree",
	["vim-illuminate"] = "illuminate",
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
		core = { "diagnostics", "diff", "editor", "spell", "syntax", "terminal", "treesitter" }
	end

	-- credits to https://github.com/folke/tokyonight.nvim
	if type(opts.highlights.plugins) == "table" then
		---@diagnostic disable-next-line: param-type-mismatch
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
