local M = {}

local config = require("eyes.config")
local utility = require("eyes.utility")

M.setup = config.setup

M.load = function()
	local opts = config.options
	require("eyes.palette").setup()
	require("eyes.highlights.core").setup()
	require("eyes.highlights.plugins").setup()
	if opts.transparent then
		utility.hl("Normal", utility.extend("Normal", { bg = "none" }))
	end
	if not vim.tbl_isempty(opts.extend.highlights) then
		for name, hl in pairs(opts.extend.highlights) do
			utility.hl(name, utility.extend(name, hl))
		end
	end
end

return M
