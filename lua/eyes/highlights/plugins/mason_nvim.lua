local M = {}

local utility = require("eyes.utility")
local hl = utility.hl

M.setup = function()
	hl("MasonHeader", "Title")
	hl("MasonHeaderSecondary", "Title")
	hl("MasonHeading", "Title")

	hl("MasonMuted", "Mute")
	hl("MasonHighlight", { fg = "fg" })

	hl("MasonMutedBlock", "Mute")
	hl("MasonMutedBlockBold", "Mute")

	hl("MasonHighlightBlock", "Title")
	hl("MasonHighlightBlockBold", "Title")

	hl("MasonHighlightSecondary", "Title")
	hl("MasonHighlightBlockSecondary", "Title")
	hl("MasonHighlightBlockBoldSecondary", "Title")
end

return M
