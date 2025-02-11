local M = {}

local utility = require("eyes.utility")
local hl = utility.hl
local extend = utility.extend
local palette = require("eyes.palette")

M.setup = function()
	hl("Normal", { fg = palette.hex10, bg = palette.hex00 })
	hl("NormalNC", "Normal")
	hl("ColorColumn", { bg = palette.hex01 })
	hl("Directory", { fg = palette.hex08 })
	hl("Folded", extend("ColorColumn", { fg = palette.hex08 }))
	hl("Question", { fg = "fg" })
	hl("Title", { fg = "fg", bold = true })
	hl("WinSeparator", "Border")

	hl("NormalFloat", "Normal")
	hl("FloatBorder", "Border")
	hl("FloatFooter", { fg = "fg" })
	hl("FloatTitle", "Title")

	hl("Cursor", "Reverse")
	hl("lCursor", "Cursor")
	hl("CursorIM", "Cursor")
	hl("TermCursor", "Cursor")
	hl("TermCursorNC", "Cursor")
	hl("CursorColumn", "ColorColumn")
	hl("CursorLine", "ColorColumn")
	hl("CursorLineNr", { fg = "fg" })
	hl("CursorLineFold", { fg = "fg" })
	hl("CursorLineSign", { fg = "fg" })
	hl("QuickFixLine", "ColorColumn")

	hl("LineNr", { fg = palette.hex04 })
	hl("LineNrAbove", "LineNr")
	hl("LineNrBelow", "LineNr")
	hl("FoldColumn", { fg = "fg" })
	hl("SignColumn", { fg = "fg" })

	hl("LspCodeLens", "Dim")
	hl("LspCodeLensSeparator", "Dim")
	hl("LspInlayHint", "Dim")
	hl("LspReferenceRead", "Highlight")
	hl("LspReferenceText", "Highlight")
	hl("LspReferenceWrite", "Highlight")
	hl("LspSignatureActiveParameter", "Highlight")
	hl("MatchParen", "Highlight")
	hl("SnippetTabstop", "Highlight")

	hl("MsgArea", { fg = "fg" })
	hl("ModeMsg", { fg = "fg" })
	hl("MoreMsg", { fg = "fg" })
	hl("ErrorMsg", "DiagnosticError")
	hl("WarningMsg", "DiagnosticWarn")
	hl("MsgSeparator", "Border")

	hl("Search", { fg = "fg", bg = palette.hex03 })
	hl("CurSearch", "Search")
	hl("IncSearch", "Search")
	hl("Substitute", "Search")

	hl("Pmenu", { fg = "fg" })
	hl("PmenuSel", "ColorColumn")
	hl("PmenuKind", "Pmenu")
	hl("PmenuKindSel", "PmenuSel")
	hl("PmenuExtra", "Pmenu")
	hl("PmenuExtraSel", "PmenuSel")
	hl("PmenuSbar", { bg = palette.hex01 })
	hl("PmenuThumb", { bg = palette.hex03 })
	hl("PmenuMatch", { bold = true })
	hl("PmenuMatchSel", extend("ColorColumn", { bold = true }))
	hl("WildMenu", "ColorColumn")
	hl("ComplMatchIns", "Dim")

	hl("Visual", { bg = palette.hex02 })
	hl("VisualNOS", "Visual")

	hl("StatusLine", { fg = "fg", bg = "bg" })
	hl("StatusLineNC", { fg = palette.hex06, bg = "bg" })
	hl("StatusLineTerm", "StatusLine")
	hl("StatusLineTermNC", "StatusLineNC")
	hl("TabLine", "StatusLineNC")
	hl("TabLineFill", "TabLine")
	hl("TabLineSel", { fg = "fg", bold = true })
	hl("WinBar", "StatusLine")
	hl("WinBarNC", "StatusLineNC")

	hl("NonText", "Dim")
	hl("Conceal", "NonText")
	hl("EndOfBuffer", "NonText")
	hl("SpecialKey", "NonText")
	hl("Whitespace", "NonText")

	hl("debugPC", "ColorColumn")
	hl("debugBreakpoint", "Icon")
end

return M
