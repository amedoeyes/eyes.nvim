local M = {}

setmetatable(M, {
	__index = function(_, key)
		return M.palette[key]
	end,
})

local opts = require("eyes.config")

---@type eyes.Palette
M.palette = {}

---@param palette eyes.Palette
M.setup = function(palette)
	M.palette = palette
	if opts.extend.palette then
		M.palette = vim.tbl_extend("force", M.palette, opts.extend.palette)
	end
end

return M
