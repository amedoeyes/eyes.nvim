local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("CmpItemAbbr", "Pmenu")
	hl("CmpItemAbbrDeprecated", "Deprecated")
	hl("CmpItemAbbrMatch", "PmenuMatch")
	hl("CmpItemAbbrMatchFuzzy", "PmenuMatch")

	hl("CmpItemMenu", "Mute")

	hl("CmpItemKind", "Icon")
	hl("CmpItemKindClass", "CmpItemKind")
	hl("CmpItemKindColor", "CmpItemKind")
	hl("CmpItemKindConstant", "CmpItemKind")
	hl("CmpItemKindConstructor", "CmpItemKind")
	hl("CmpItemKindEnum", "CmpItemKind")
	hl("CmpItemKindEnumMember", "CmpItemKind")
	hl("CmpItemKindEvent", "CmpItemKind")
	hl("CmpItemKindField", "CmpItemKind")
	hl("CmpItemKindFile", "CmpItemKind")
	hl("CmpItemKindFolder", "CmpItemKind")
	hl("CmpItemKindFunction", "CmpItemKind")
	hl("CmpItemKindInterface", "CmpItemKind")
	hl("CmpItemKindKeyword", "CmpItemKind")
	hl("CmpItemKindMethod", "CmpItemKind")
	hl("CmpItemKindModule", "CmpItemKind")
	hl("CmpItemKindOperator", "CmpItemKind")
	hl("CmpItemKindProperty", "CmpItemKind")
	hl("CmpItemKindReference", "CmpItemKind")
	hl("CmpItemKindSnippet", "CmpItemKind")
	hl("CmpItemKindStruct", "CmpItemKind")
	hl("CmpItemKindText", "CmpItemKind")
	hl("CmpItemKindTypeParameter", "CmpItemKind")
	hl("CmpItemKindUnit", "CmpItemKind")
	hl("CmpItemKindValue", "CmpItemKind")
	hl("CmpItemKindVariable", "CmpItemKind")

	hl("CmpGhostText", { link = "Dim" })
end

return M
