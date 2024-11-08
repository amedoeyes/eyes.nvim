local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("DiffAdd", { fg = palette.hex08 })
	hl("DiffChange", { fg = palette.hex06 })
	hl("DiffDelete", { fg = palette.hex04 })
	hl("DiffText", { fg = palette.hex08 })
end

return M
