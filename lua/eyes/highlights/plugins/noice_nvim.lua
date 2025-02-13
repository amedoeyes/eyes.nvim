local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("NoiceCmdline", { fg = "fg" })
	hl("NoiceCmdlinePrompt", { fg = "fg" })

	hl("NoiceCmdlineIcon", "Icon")
	hl("NoiceCmdlineIconCalculator", "Icon")
	hl("NoiceCmdlineIconCmdline", "Icon")
	hl("NoiceCmdlineIconFilter", "Icon")
	hl("NoiceCmdlineIconHelp", "Icon")
	hl("NoiceCmdlineIconInput", "Icon")
	hl("NoiceCmdlineIconLua", "Icon")
	hl("NoiceCmdlineIconSearch", "Icon")

	hl("NoiceCmdlinePopup", "NormalFloat")
	hl("NoiceCmdlinePopupBorder", "FloatBorder")
	hl("NoiceCmdlinePopupBorderCalculator", "FloatBorder")
	hl("NoiceCmdlinePopupBorderCmdline", "FloatBorder")
	hl("NoiceCmdlinePopupBorderFilter", "FloatBorder")
	hl("NoiceCmdlinePopupBorderHelp", "FloatBorder")
	hl("NoiceCmdlinePopupBorderInput", "FloatBorder")
	hl("NoiceCmdlinePopupBorderLua", "FloatBorder")
	hl("NoiceCmdlinePopupBorderSearch", "FloatBorder")

	hl("NoiceCmdlinePopupTitle", "FloatTitle")
	hl("NoiceCmdlinePopupTitleCalculator", "FloatTitle")
	hl("NoiceCmdlinePopupTitleCmdline", "FloatTitle")
	hl("NoiceCmdlinePopupTitleFilter", "FloatTitle")
	hl("NoiceCmdlinePopupTitleHelp", "FloatTitle")
	hl("NoiceCmdlinePopupTitleInput", "FloatTitle")
	hl("NoiceCmdlinePopupTitleLua", "FloatTitle")
	hl("NoiceCmdlinePopupTitleSearch", "FloatTitle")

	hl("NoiceCompletionItemKindDefault", { fg = "fg" })
	hl("NoiceCompletionItemKindClass", { fg = "fg" })
	hl("NoiceCompletionItemKindColor", { fg = "fg" })
	hl("NoiceCompletionItemKindConstant", { fg = "fg" })
	hl("NoiceCompletionItemKindConstructor", { fg = "fg" })
	hl("NoiceCompletionItemKindEnum", { fg = "fg" })
	hl("NoiceCompletionItemKindEnumMember", { fg = "fg" })
	hl("NoiceCompletionItemKindField", { fg = "fg" })
	hl("NoiceCompletionItemKindFile", { fg = "fg" })
	hl("NoiceCompletionItemKindFolder", { fg = "fg" })
	hl("NoiceCompletionItemKindFunction", { fg = "fg" })
	hl("NoiceCompletionItemKindInterface", { fg = "fg" })
	hl("NoiceCompletionItemKindKeyword", { fg = "fg" })
	hl("NoiceCompletionItemKindMethod", { fg = "fg" })
	hl("NoiceCompletionItemKindModule", { fg = "fg" })
	hl("NoiceCompletionItemKindProperty", { fg = "fg" })
	hl("NoiceCompletionItemKindSnippet", { fg = "fg" })
	hl("NoiceCompletionItemKindStruct", { fg = "fg" })
	hl("NoiceCompletionItemKindText", { fg = "fg" })
	hl("NoiceCompletionItemKindUnit", { fg = "fg" })
	hl("NoiceCompletionItemKindValue", { fg = "fg" })
	hl("NoiceCompletionItemKindVariable", { fg = "fg" })

	hl("NoiceConfirm", "NormalFloat")
	hl("NoiceConfirmBorder", "FloatBorder")
	hl("NoiceFormatConfirm", "Mute")
	hl("NoiceFormatConfirmDefault", "Title")

	hl("NoiceCursor", "Cursor")

	hl("NoiceFormatDate", "Mute")
	hl("NoiceFormatEvent", "NonText")
	hl("NoiceFormatKind", "NonText")
	hl("NoiceFormatTitle", "Title")

	hl("NoiceFormatLevelOff", "NonText")
	hl("NoiceFormatLevelDebug", "NonText")
	hl("NoiceFormatLevelTrace", "NonText")
	hl("NoiceFormatLevelError", "DiagnosticVirtualTextError")
	hl("NoiceFormatLevelInfo", "DiagnosticVirtualTextInfo")
	hl("NoiceFormatLevelWarn", "DiagnosticVirtualTextWarn")

	hl("NoiceHiddenCursor", { blend = 100 })

	hl("NoiceLspProgressClient", "Title")
	hl("NoiceLspProgressSpinner", { fg = "fg" })
	hl("NoiceLspProgressTitle", { fg = "fg" })
	hl("NoiceFormatProgressDone", { reverse = true })
	hl("NoiceFormatProgressTodo", "Normal")

	hl("NoiceMini", { fg = "fg" })

	hl("NoicePopup", "NormalFloat")
	hl("NoicePopupBorder", "FloatBorder")
	hl("NoicePopupmenu", "Pmenu")
	hl("NoicePopupmenuBorder", "FloatBorder")
	hl("NoicePopupmenuMatch", "PmenuMatch")
	hl("NoicePopupmenuSelected", "PmenuSel")

	hl("NoiceScrollbar", "PmenuSbar")
	hl("NoiceScrollbarThumb", "PmenuThumb")

	hl("NoiceSplit", "NormalFloat")
	hl("NoiceSplitBorder", "FloatBorder")

	hl("NoiceVirtualText", "Dim")
end

return M
