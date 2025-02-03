local M = {}

local utility = require("eyes.utility")
local hl = utility.hl
local extend = utility.extend
local palette = require("eyes.palette").palette

M.setup = function()
	hl("Normal", { fg = palette.hex10, bg = palette.hex00 })
	hl("NormalNC", { link = "Normal" })
	hl("ColorColumn", { bg = palette.hex01 })
	hl("Directory", { fg = palette.hex08 })
	hl("Folded", extend("ColorColumn", { fg = palette.hex08 }))
	hl("Question", { fg = "fg" })
	hl("Title", { fg = "fg", bold = true })
	hl("WinSeparator", { link = "Border" })

	hl("NormalFloat", { link = "Normal" })
	hl("FloatBorder", { link = "Border" })
	hl("FloatFooter", { fg = "fg" })
	hl("FloatTitle", { link = "Title" })

	hl("Cursor", { fg = "bg", bg = "fg" })
	hl("lCursor", { link = "Cursor" })
	hl("CursorIM", { link = "Cursor" })
	hl("TermCursor", { link = "Cursor" })
	hl("TermCursorNC", { link = "Cursor" })
	hl("CursorColumn", { link = "ColorColumn" })
	hl("CursorLine", { link = "ColorColumn" })
	hl("CursorLineNr", { fg = "fg" })
	hl("CursorLineFold", { fg = "fg" })
	hl("CursorLineSign", { fg = "fg" })
	hl("QuickFixLine", { link = "ColorColumn" })

	hl("LineNr", { fg = palette.hex04 })
	hl("LineNrAbove", { link = "LineNr" })
	hl("LineNrBelow", { link = "LineNr" })
	hl("FoldColumn", { fg = "fg" })
	hl("SignColumn", { fg = "fg" })

	hl("LspCodeLens", { link = "Dim" })
	hl("LspCodeLensSeparator", { link = "Dim" })
	hl("LspInlayHint", { link = "Dim" })
	hl("LspReferenceRead", { link = "Highlight" })
	hl("LspReferenceText", { link = "Highlight" })
	hl("LspReferenceWrite", { link = "Highlight" })
	hl("LspSignatureActiveParameter", { link = "Highlight" })
	hl("MatchParen", { link = "Highlight" })
	hl("SnippetTabstop", { link = "Highlight" })

	hl("MsgArea", { fg = "fg" })
	hl("ModeMsg", { fg = "fg" })
	hl("MoreMsg", { fg = "fg" })
	hl("ErrorMsg", { link = "DiagnosticError" })
	hl("WarningMsg", { link = "DiagnosticWarn" })
	hl("MsgSeparator", { link = "Border" })

	hl("Search", { fg = "fg", bg = palette.hex03 })
	hl("CurSearch", { link = "Search" })
	hl("IncSearch", { link = "Search" })
	hl("Substitute", { link = "Search" })

	hl("Pmenu", { fg = "fg" })
	hl("PmenuSel", { link = "ColorColumn" })
	hl("PmenuKind", { link = "Pmenu" })
	hl("PmenuKindSel", { link = "PmenuSel" })
	hl("PmenuExtra", { link = "Pmenu" })
	hl("PmenuExtraSel", { link = "PmenuSel" })
	hl("PmenuSbar", { bg = palette.hex01 })
	hl("PmenuThumb", { bg = palette.hex03 })
	hl("PmenuMatch", { bold = true })
	hl("PmenuMatchSel", extend("ColorColumn", { bold = true }))
	hl("WildMenu", { link = "ColorColumn" })

	hl("Visual", { bg = palette.hex02 })
	hl("VisualNOS", { link = "Visual" })

	hl("StatusLine", { fg = "fg", bg = "bg" })
	hl("StatusLineNC", { fg = palette.hex06, bg = "bg" })
	hl("StatusLineTerm", { link = "StatusLine" })
	hl("StatusLineTermNC", { link = "StatusLineNC" })
	hl("TabLine", { link = "StatusLineNC" })
	hl("TabLineFill", { link = "TabLine" })
	hl("TabLineSel", { fg = "fg", bold = true })
	hl("WinBar", { link = "StatusLine" })
	hl("WinBarNC", { link = "StatusLineNC" })

	hl("NonText", { link = "Dim" })
	hl("Conceal", { link = "NonText" })
	hl("EndOfBuffer", { link = "NonText" })
	hl("SpecialKey", { link = "NonText" })
	hl("Whitespace", { link = "NonText" })

	hl("debugPC", { link = "ColorColumn" })
	hl("debugBreakpoint", { link = "Icon" })
end

return M
