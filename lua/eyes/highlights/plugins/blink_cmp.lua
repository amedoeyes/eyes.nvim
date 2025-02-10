local M = {}

local utility = require("eyes.utility")
local hl = utility.hl
local extend = utility.extend

M.setup = function()
	hl("BlinkCmpMenu", "Pmenu")
	hl("BlinkCmpMenuBorder", "FloatBorder")
	hl("BlinkCmpMenuSelection", "PmenuSel")

	hl("BlinkCmpScrollBarThumb", "PmenuThumb")
	hl("BlinkCmpScrollBarGutter", "PmenuSbar")

	hl("BlinkCmpLabel", "Pmenu")
	hl("BlinkCmpLabelDescription", "Pmenu")
	hl("BlinkCmpLabelDetail", "Pmenu")
	hl("BlinkCmpLabelDeprecated", extend("Comment", { strikethrough = true }))
	hl("BlinkCmpLabelMatch", "PmenuMatch")

	hl("BlinkCmpGhostText", "Dim")
	hl("BlinkCmpKind", "Icon")

	hl("BlinkCmpDoc", "NormalFloat")
	hl("BlinkCmpDocBorder", "FloatBorder")
	hl("BlinkCmpDocCursorLine", "CursorLine")

	hl("BlinkCmpSignatureHelp", "NormalFloat")
	hl("BlinkCmpSignatureHelpBorder", "FloatBorder")
	hl("BlinkCmpSignatureHelpActiveParameter", "LspSignatureActiveParameter")
end

return M
