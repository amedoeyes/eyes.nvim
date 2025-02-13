local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("MiniIndentscopeSymbol", "Mute")
	hl("MiniIndentscopeSymbolOff", "Mute")
end

return M
