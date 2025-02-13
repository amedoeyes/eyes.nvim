local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("UndotreeBranch", "Mute")
	hl("UndotreeCurrent", { fg = "fg" })
	hl("UndotreeFirstNode", "Mute")
	hl("UndotreeHead", "Mute")
	hl("UndotreeHelp", "Dim")
	hl("UndotreeHelpKey", { fg = "fg" })
	hl("UndotreeHelpTitle", "Title")
	hl("UndotreeNext", "Mute")
	hl("UndotreeNode", "Mute")
	hl("UndotreeNodeCurrent", { fg = "fg" })
	hl("UndotreeSavedBig", "Bold")
	hl("UndotreeSavedSmall", { fg = "fg" })
	hl("UndotreeSeq", "Dim")
	hl("UndotreeTimeStamp", "Mute")
end

return M
