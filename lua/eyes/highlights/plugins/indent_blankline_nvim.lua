local M = {}

local palette = require("eyes.palette")
local hl = require("eyes.utility").hl

M.setup = function()
	hl("IblIndent", { fg = palette.hex03 })
	hl("IblScope", "Mute")
	hl("IblWhitespace", { fg = palette.hex03 })
end

return M
