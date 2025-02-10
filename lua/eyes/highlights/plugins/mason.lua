local M = {}

local utility = require("eyes.utility")
local hl = utility.hl

M.setup = function()
	hl("MasonHeader", "Title")
	hl("MasonHeaderSecondary", "Title")
	hl("MasonHeading", "Title")

	hl("MasonMuted", "Mute")
	hl("MasonHighlight", { fg = "fg" })

	hl("MasonMutedBlock", "Button")
	hl("MasonMutedBlockBold", "Button")

	hl("MasonHighlightBlock", "ButtonActive")
	hl("MasonHighlightBlockBold", "ButtonActive")

	hl("MasonHighlightSecondary", "Title")
	hl("MasonHighlightBlockSecondary", "ButtonActive")
	hl("MasonHighlightBlockBoldSecondary", "ButtonActive")
end

return M
