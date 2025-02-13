local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("IblIndent", "Whitespace")
	hl("IblScope", "Mute")
	hl("IblWhitespace", "Whitespace")
end

return M
