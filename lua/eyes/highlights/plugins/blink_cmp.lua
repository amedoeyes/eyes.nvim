local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("BlinkCmpMenu", "Pmenu")
	hl("BlinkCmpMenuBorder", "FloatBorder")
	hl("BlinkCmpMenuSelection", "PmenuSel")

	hl("BlinkCmpScrollBarGutter", "PmenuSbar")
	hl("BlinkCmpScrollBarThumb", "PmenuThumb")

	hl("BlinkCmpLabel", "Pmenu")
	hl("BlinkCmpLabelDeprecated", "Deprecated")
	hl("BlinkCmpLabelDescription", "Pmenu")
	hl("BlinkCmpLabelDetail", "Mute")
	hl("BlinkCmpLabelMatch", "PmenuMatch")

	hl("BlinkCmpKind", "Icon")
	hl("BlinkCmpKindClass", "BlinkCmpKind")
	hl("BlinkCmpKindColor", "BlinkCmpKind")
	hl("BlinkCmpKindConstant", "BlinkCmpKind")
	hl("BlinkCmpKindConstructor", "BlinkCmpKind")
	hl("BlinkCmpKindEnum", "BlinkCmpKind")
	hl("BlinkCmpKindEnumMember", "BlinkCmpKind")
	hl("BlinkCmpKindEvent", "BlinkCmpKind")
	hl("BlinkCmpKindField", "BlinkCmpKind")
	hl("BlinkCmpKindFile", "BlinkCmpKind")
	hl("BlinkCmpKindFolder", "BlinkCmpKind")
	hl("BlinkCmpKindFunction", "BlinkCmpKind")
	hl("BlinkCmpKindInterface", "BlinkCmpKind")
	hl("BlinkCmpKindKeyword", "BlinkCmpKind")
	hl("BlinkCmpKindMethod", "BlinkCmpKind")
	hl("BlinkCmpKindModule", "BlinkCmpKind")
	hl("BlinkCmpKindOperator", "BlinkCmpKind")
	hl("BlinkCmpKindProperty", "BlinkCmpKind")
	hl("BlinkCmpKindReference", "BlinkCmpKind")
	hl("BlinkCmpKindSnippet", "BlinkCmpKind")
	hl("BlinkCmpKindStruct", "BlinkCmpKind")
	hl("BlinkCmpKindText", "BlinkCmpKind")
	hl("BlinkCmpKindTypeParameter", "BlinkCmpKind")
	hl("BlinkCmpKindUnit", "BlinkCmpKind")
	hl("BlinkCmpKindValue", "BlinkCmpKind")
	hl("BlinkCmpKindVariable", "BlinkCmpKind")

	hl("BlinkCmpDoc", "NormalFloat")
	hl("BlinkCmpDocBorder", "FloatBorder")
	hl("BlinkCmpDocCursorLine", "CursorLine")
	hl("BlinkCmpDocSeparator", "FloatBorder")

	hl("BlinkCmpSignatureHelp", "NormalFloat")
	hl("BlinkCmpSignatureHelpActiveParameter", "LspSignatureActiveParameter")
	hl("BlinkCmpSignatureHelpBorder", "FloatBorder")

	hl("BlinkCmpSource", "Dim")

	hl("BlinkCmpGhostText", "Dim")
end

return M
