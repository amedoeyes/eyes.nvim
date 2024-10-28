local M = {}

local config = require("eyes.config")
local utility = require("eyes.utility")

M.setup = config.setup

M.load = function()
	require("eyes.palette").setup()
	require("eyes.highlights.core").setup()
	require("eyes.highlights.plugins").setup()
	if not vim.tbl_isempty(config.options.extend.highlights) then
		for name, hl in pairs(config.options.extend.highlights) do
			utility.hl(name, utility.extend(name, hl))
		end
	end
end

return M
