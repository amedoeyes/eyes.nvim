local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette")

M.setup = function()
	hl("UndotreeNode", { fg = palette.hex10 })
end

return M
