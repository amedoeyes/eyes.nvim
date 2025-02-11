local M = {}

---@type eyes.Options
M.defaults = {
	palette = "dark",
	transparent = false,
	highlights = {
		core = "all",
		plugins = (package.loaded.lazy or package.loaded["mini.deps"]) and "auto" or "all",
	},
	extend = {},
}

---@type eyes.Options
M.options = nil

---@param opts? eyes.Options
M.setup = function(opts)
	if opts then
		M.options = vim.tbl_deep_extend("force", M.defaults, opts)
	else
		M.options = M.defaults
	end
end

return M
