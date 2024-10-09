local M = {}

M.setup = require("eyes.config").setup

M.load = function()
	require("eyes.palette").setup()
	require("eyes.highlights.core").setup()
	require("eyes.highlights.plugins").setup()
	local extend = require("eyes.config").options.extend
	if not vim.tbl_isempty(extend.highlights) then
		for k, v in pairs(extend.highlights) do
			v = vim.tbl_extend("force", vim.api.nvim_get_hl(0, { name = k }), v)
			M.hl(k, v)
		end
	end
end

return M
