local M = {}

local palette = require("eyes.palette")
local utility = require("eyes.utility")
local hl = utility.hl

M.dashboard = function()
	hl("SnacksDashboardNormal", "Normal")
	hl("SnacksDashboardHeader", { fg = "fg" })
	hl("SnacksDashboardFooter", { fg = "fg" })
	hl("SnacksDashboardTitle", "Title")
	hl("SnacksDashboardTerminal", "None")
	hl("SnacksDashboardIcon", "Icon")
	hl("SnacksDashboardDesc", { fg = "fg" })
	hl("SnacksDashboardKey", "Mute")
	hl("SnacksDashboardDir", "Directory")
	hl("SnacksDashboardFile", { fg = "fg" })
	hl("SnacksDashboardSpecial", "Mute")
end

M.indent = function()
	hl("SnacksIndent", { fg = palette.hex03 })
	hl("SnacksIndent1", { fg = palette.hex01 })
	hl("SnacksIndent2", { fg = palette.hex02 })
	hl("SnacksIndent3", { fg = palette.hex03 })
	hl("SnacksIndent4", { fg = palette.hex04 })
	hl("SnacksIndent5", { fg = palette.hex05 })
	hl("SnacksIndent6", { fg = palette.hex06 })
	hl("SnacksIndent7", { fg = palette.hex07 })
	hl("SnacksIndent8", { fg = palette.hex08 })
	hl("SnacksIndentBlank", "Dim")
	hl("SnacksIndentChunk", "Mute")
	hl("SnacksIndentScope", "Mute")
end

M.input = function()
	hl("SnacksInputNormal", "Normal")
	hl("SnacksInputBorder", "Border")
	hl("SnacksInputTitle", "Title")
	hl("SnacksInputPrompt", "SnacksInputTitle")
	hl("SnacksInputIcon", "Icon")
end

M.notifier = function()
	hl("SnacksNotifierMinimal", "NormalFloat")

	hl("SnacksNotifierError", "Normal")
	hl("SnacksNotifierTitleError", "DiagnosticError")
	hl("SnacksNotifierFooterError", "DiagnosticError")
	hl("SnacksNotifierBorderError", "Border")
	hl("SnacksNotifierIconError", "DiagnosticSignError")

	hl("SnacksNotifierWarn", "Normal")
	hl("SnacksNotifierTitleWarn", "DiagnosticWarn")
	hl("SnacksNotifierFooterWarn", "DiagnosticWarn")
	hl("SnacksNotifierBorderWarn", "Border")
	hl("SnacksNotifierIconWarn", "DiagnosticSignWarn")

	hl("SnacksNotifierInfo", "Normal")
	hl("SnacksNotifierTitleInfo", "DiagnosticInfo")
	hl("SnacksNotifierFooterInfo", "DiagnosticInfo")
	hl("SnacksNotifierBorderInfo", "Border")
	hl("SnacksNotifierIconInfo", "DiagnosticSignInfo")

	hl("SnacksNotifierDebug", "Normal")
	hl("SnacksNotifierTitleDebug", "NonText")
	hl("SnacksNotifierFooterDebug", "NonText")
	hl("SnacksNotifierBorderDebug", "Border")
	hl("SnacksNotifierIconDebug", "NonText")

	hl("SnacksNotifierTrace", "Normal")
	hl("SnacksNotifierTitleTrace", "NonText")
	hl("SnacksNotifierFooterTrace", "NonText")
	hl("SnacksNotifierBorderTrace", "Border")
	hl("SnacksNotifierIconTrace", "NonText")

	hl("SnacksNotifierHistory", "Normal")
	hl("SnacksNotifierHistoryTitle", "Title")
	hl("SnacksNotifierHistoryDateTime", "Special")
end

M.picker = function()
	hl("SnacksPicker", "NormalFloat")
	hl("SnacksPickerTitle", "FloatTitle")
	hl("SnacksPickerBorder", "FloatBorder")
	hl("SnacksPickerFooter", "FloatFooter")
	hl("SnacksPickerCursorLine", "CursorLine")

	hl("SnacksPickerInput", "SnacksPicker")
	hl("SnacksPickerInputTitle", "SnacksPickerTitle")
	hl("SnacksPickerInputBorder", "SnacksPickerBorder")
	hl("SnacksPickerInputFooter", "SnacksPickerFooter")
	hl("SnacksPickerInputCursorLine", "SnacksPickerCursorLine")
	hl("SnacksPickerInputSearch", "Search")
	hl("SnacksPickerPrompt", "Mute")

	hl("SnacksPickerPreview", "SnacksPicker")
	hl("SnacksPickerPreviewTitle", "SnacksPickerTitle")
	hl("SnacksPickerPreviewBorder", "SnacksPickerBorder")
	hl("SnacksPickerPreviewFooter", "SnacksPickerFooter")
	hl("SnacksPickerPreviewCursorLine", "SnacksPickerCursorLine")

	hl("SnacksPickerList", "SnacksPicker")
	hl("SnacksPickerListTitle", "SnacksPickerTitle")
	hl("SnacksPickerListBorder", "SnacksPickerBorder")
	hl("SnacksPickerListFooter", "SnacksPickerFooter")
	hl("SnacksPickerListCursorLine", "SnacksPickerCursorLine")

	hl("SnacksPickerToggle", "Mute")
	hl("SnacksPickerToggleFollow", "SnacksPickerToggle")
	hl("SnacksPickerToggleHidden", "SnacksPickerToggle")
	hl("SnacksPickerToggleIgnored", "SnacksPickerToggle")
	hl("SnacksPickerToggleModified", "SnacksPickerToggle")
	hl("SnacksPickerToggleRegex", "SnacksPickerToggle")

	hl("SnacksPickerBox", "SnacksPicker")
	hl("SnacksPickerBoxTitle", "SnacksPickerTitle")
	hl("SnacksPickerBoxBorder", "SnacksPickerBorder")
	hl("SnacksPickerBoxFooter", "SnacksPickerFooter")
	hl("SnacksPickerBoxCursorLine", "SnacksPickerCursorLine")

	hl("SnacksPickerSelected", { fg = "fg" })
	hl("SnacksPickerUnselected", "Dim")

	hl("SnacksPickerSpinner", "Dim")
	hl("SnacksPickerTotals", "Dim")

	hl("SnacksPickerSearch", "Search")
	hl("SnacksPickerMatch", "PmenuMatch")

	hl("SnacksPickerTime", "Mute")
	hl("SnacksPickerTree", "Dim")
	hl("SnacksPickerIdx", "Mute")
	hl("SnacksPickerCode", "@markup.raw.markdown_inline")

	hl("SnacksPickerBold", "Bold")
	hl("SnacksPickerComment", "Comment")
	hl("SnacksPickerDelim", "Delimiter")
	hl("SnacksPickerDimmed", "Dim")
	hl("SnacksPickerItalic", "Italic")
	hl("SnacksPickerSpecial", "Special")

	hl("SnacksPickerFile", { fg = "fg" })
	hl("SnacksPickerDirectory", "Directory")
	hl("SnacksPickerDir", "Directory")
	hl("SnacksPickerLink", "Mute")
	hl("SnacksPickerLinkBroken", "Deprecated")
	hl("SnacksPickerPathHidden", "Dim")
	hl("SnacksPickerPathIgnored", "Dim")
	hl("SnacksPickerLabel", "Mute")
	hl("SnacksPickerRow", "Mute")
	hl("SnacksPickerCol", "Mute")

	hl("SnacksPickerIconArray", "Icon")
	hl("SnacksPickerIconBoolean", "Icon")
	hl("SnacksPickerIconClass", "Icon")
	hl("SnacksPickerIconConstant", "Icon")
	hl("SnacksPickerIconConstructor", "Icon")
	hl("SnacksPickerIconEnum", "Icon")
	hl("SnacksPickerIconEnumMember", "Icon")
	hl("SnacksPickerIconEvent", "Icon")
	hl("SnacksPickerIconField", "Icon")
	hl("SnacksPickerIconFile", "Icon")
	hl("SnacksPickerIconFunction", "Icon")
	hl("SnacksPickerIconInterface", "Icon")
	hl("SnacksPickerIconKey", "Icon")
	hl("SnacksPickerIconMethod", "Icon")
	hl("SnacksPickerIconModule", "Icon")
	hl("SnacksPickerIconNamespace", "Icon")
	hl("SnacksPickerIconNull", "Icon")
	hl("SnacksPickerIconNumber", "Icon")
	hl("SnacksPickerIconObject", "Icon")
	hl("SnacksPickerIconOperator", "Icon")
	hl("SnacksPickerIconPackage", "Icon")
	hl("SnacksPickerIconProperty", "Icon")
	hl("SnacksPickerIconString", "Icon")
	hl("SnacksPickerIconStruct", "Icon")
	hl("SnacksPickerIconTypeParameter", "Icon")
	hl("SnacksPickerIconVariable", "Icon")

	hl("SnacksPickerAuEvent", "Mute")
	hl("SnacksPickerAuGroup", { fg = "fg" })
	hl("SnacksPickerAuPattern", "Mute")

	hl("SnacksPickerBufFlags", "Mute")
	hl("SnacksPickerBufNr", "Mute")

	hl("SnacksPickerCmd", { fg = "fg" })
	hl("SnacksPickerCmdBuiltin", { fg = "fg" })
	hl("SnacksPickerDesc", "Mute")

	hl("SnacksPickerDiagnosticCode", "Mute")
	hl("SnacksPickerDiagnosticSource", "Dim")

	hl("SnacksPickerGitBranch", { fg = "fg" })
	hl("SnacksPickerGitBranchCurrent", { fg = "fg" })
	hl("SnacksPickerGitDetached", { fg = "fg" })

	hl("SnacksPickerGitBreaking", "Error")
	hl("SnacksPickerGitCommit", "Mute")
	hl("SnacksPickerGitDate", "Mute")
	hl("SnacksPickerGitIssue", "Mute")
	hl("SnacksPickerGitScope", "Italic")
	hl("SnacksPickerGitType", "Bold")

	hl("SnacksPickerGitStatus", "Mute")
	hl("SnacksPickerGitStatusAdded", "Added")
	hl("SnacksPickerGitStatusCopied", "Added")
	hl("SnacksPickerGitStatusDeleted", "Removed")
	hl("SnacksPickerGitStatusIgnored", "Dim")
	hl("SnacksPickerGitStatusModified", "Changed")
	hl("SnacksPickerGitStatusRenamed", "Changed")
	hl("SnacksPickerGitStatusStaged", "Added")
	hl("SnacksPickerGitStatusUnmerged", "Dim")
	hl("SnacksPickerGitStatusUntracked", "Dim")

	hl("SnacksPickerIcon", "Icon")
	hl("SnacksPickerIconCategory", "Mute")
	hl("SnacksPickerIconName", { fg = "fg" })
	hl("SnacksPickerIconSource", "Mute")

	hl("SnacksPickerKeymapLhs", "Mute")
	hl("SnacksPickerKeymapMode", "Mute")
	hl("SnacksPickerKeymapNowait", "Mute")
	hl("SnacksPickerKeymapRhs", "Mute")

	hl("SnacksPickerManPage", "Mute")
	hl("SnacksPickerManSection", "Mute")

	hl("SnacksPickerPickWin", "Search")
	hl("SnacksPickerPickWinCurrent", "CurSearch")

	hl("SnacksPickerRegister", "Mute")

	hl("SnacksPickerUndoAdded", "Added")
	hl("SnacksPickerUndoCurrent", { fg = "fg" })
	hl("SnacksPickerUndoRemoved", "Removed")
	hl("SnacksPickerUndoSaved", "Mute")
end

M.statuscolumn = function()
	hl("SnacksStatusColumnMark", { fg = "fg" })
end

M.win = function()
	hl("SnacksNormal", "NormalFloat")
	hl("SnacksNormalNC", "NormalFloat")
	hl("SnacksBackdrop", { bg = "#000000" })
	hl("SnacksWinBar", "Title")
	hl("SnacksWinBarNC", "SnacksWinBar")
	hl("SnacksWinKey", "Mute")
	hl("SnacksWinKeyDesc", { fg = "fg" })
	hl("SnacksWinKeySep", "Mute")
end

M.setup = function()
	M.dashboard()
	M.indent()
	M.input()
	M.notifier()
	M.picker()
	M.statuscolumn()
	M.win()
end

return M
