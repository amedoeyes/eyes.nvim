local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("MasonHeader", { link = "Title" })
	hl("MasonHeaderSecondary", { link = "Title" })
	hl("MasonHeading", { link = "Title" })

	hl("MasonMuted", { link = "Comment" })
	hl("MasonMutedBlock", { link = "Button" })
	hl("MasonMutedBlockBold", { link = "Button" })

	hl("MasonHighlight", { link = "Title" })
	hl("MasonHighlightBlock", { link = "ButtonActive" })
	hl("MasonHighlightBlockBold", { link = "ButtonActive" })

	hl("MasonHighlightSecondary", { link = "Title" })
	hl("MasonHighlightBlockSecondary", { link = "ButtonActive" })
	hl("MasonHighlightBlockBoldSecondary", { link = "ButtonActive" })
end

return M
