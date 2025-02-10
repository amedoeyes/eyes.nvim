local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("FlashLabel", { fg = palette.hex10, bg = palette.hex05 })
	hl("FlashCurrent", { fg = palette.hex10, bg = palette.hex04 })
end

return M
