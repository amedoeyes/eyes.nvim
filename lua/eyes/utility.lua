local M = {}

---@param name string
---@param values vim.api.keyset.highlight
M.hl = function(name, values)
	vim.api.nvim_set_hl(0, name, values)
end

return M
