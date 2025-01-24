local M = {}

---@param opts? eyes.Options
M.setup = function(opts)
	local config = require("eyes.config")
	config.setup(opts)

	if config.options.autoload then
		vim.cmd([[colorscheme eyes]])
	end
end

M.load = function()
	require("eyes.palette").setup()
	require("eyes.highlights").setup()
end

return M
