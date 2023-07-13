local M = {}

M.options = {
	terminal = true,
	diagnostics = true,
	spell = true,
}

function M.setup(options)
	M.options = vim.tbl_deep_extend("force", {}, M.options, options or {})
end

return M
