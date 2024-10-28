local M = {}

---@param name string
---@param hl vim.api.keyset.highlight
M.hl = function(name, hl)
	vim.api.nvim_set_hl(0, name, hl)
end

---@param name string
---@return vim.api.keyset.get_hl_info
M.get_hl = function(name)
	return vim.api.nvim_get_hl(0, { name = name })
end

---@param name string
---@param hl vim.api.keyset.highlight
---@return vim.api.keyset.highlight
M.extend = function(name, hl)
	return vim.tbl_extend("force", M.get_hl(name), hl)
end

---@param ... string
---@return vim.api.keyset.highlight
M.mix = function(...)
	local hls = {}
	for _, name in ipairs({ ... }) do
		table.insert(hls, M.get_hl(name))
	end
	return vim.tbl_extend("force", unpack(hls))
end

return M
