local M = {}

local utility = require("eyes.utility")
local hl = utility.hl
local extend = utility.extend

M.setup = function()
	hl("BlinkCmpMenu", { link = "Pmenu" })
	hl("BlinkCmpMenuBorder", { link = "FloatBorder" })
	hl("BlinkCmpMenuSelection", { link = "PmenuSel" })

	hl("BlinkCmpScrollBarThumb", { link = "PmenuThumb" })
	hl("BlinkCmpScrollBarGutter", { link = "PmenuSbar" })

	hl("BlinkCmpLabel", { link = "Pmenu" })
	hl("BlinkCmpLabelDescription", { link = "Pmenu" })
	hl("BlinkCmpLabelDetail", { link = "Pmenu" })
	hl("BlinkCmpLabelDeprecated", extend("Comment", { strikethrough = true }))
	hl("BlinkCmpLabelMatch", { link = "PmenuMatch" })

	hl("BlinkCmpGhostText", { link = "NonText" })
	hl("BlinkCmpKind", { link = "Icon" })

	hl("BlinkCmpDoc", { link = "NormalFloat" })
	hl("BlinkCmpDocBorder", { link = "FloatBorder" })
	hl("BlinkCmpDocCursorLine", { link = "CursorLine" })

	hl("BlinkCmpSignatureHelp", { link = "NormalFloat" })
	hl("BlinkCmpSignatureHelpBorder", { link = "FloatBorder" })
	hl("BlinkCmpSignatureHelpActiveParameter", { link = "LspSignatureActiveParameter" })
end

return M
