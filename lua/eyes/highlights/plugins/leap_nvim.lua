local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("LeapBackdrop", "Dim")
	hl("LeapLabel", "Highlight")
	hl("LeapMatch", { fg = "fg" })
end

return M
