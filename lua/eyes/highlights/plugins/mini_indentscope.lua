local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("MiniIndentscopeSymbol", { fg = palette.hex06 })
end

return M
