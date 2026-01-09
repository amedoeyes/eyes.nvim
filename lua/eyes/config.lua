local M = {}

---@type eyes.Options
M.defaults = {
	transparent = false,
	highlights = {
		core = true,
		plugins = true,
	},
	extend = {},
}

---@type eyes.Options
M.options = M.defaults

---@param opts eyes.Options
M.setup = function(opts)
	M.options = vim.tbl_deep_extend("force", M.defaults, opts)
end

return M
