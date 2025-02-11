local M = {}

---@param opts? eyes.Options
M.setup = function(opts)
	local config = require("eyes.config")
	config.setup(opts)
end

---@param palette eyes.Palette
M.load = function(palette)
	local opts = require("eyes.config").options
	M.palette = palette
	if opts.extend.palette then
		M.palette = vim.tbl_extend("force", M.palette, opts.extend.palette)
	end
	require("eyes.highlights").setup()
end

return M
