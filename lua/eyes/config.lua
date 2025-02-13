local M = {}

setmetatable(M, {
	__index = function(_, key)
		return M.options[key]
	end,
})

---@type eyes.Options
M.defaults = {
	transparent = false,
	highlights = {
		core = "all",
		plugins = (package.loaded.lazy or package.loaded["mini.deps"]) and "auto" or "all",
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
