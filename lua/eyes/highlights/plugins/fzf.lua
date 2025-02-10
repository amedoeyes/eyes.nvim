local M = {}

local utility = require("eyes.utility")
local hl = utility.hl

M.setup = function()
	hl("FzfLuaNormal", "Normal")
	hl("FzfLuaBorder", "Border")
	hl("FzfLuaTitle", "Title")
	hl("FzfLuaBackdrop", { bg = "black" })
	hl("FzfLuaHeaderBind", "Mute")
	hl("FzfLuaHeaderText", "Mute")
	hl("FzfLuaSearch", "IncSearch")
	hl("FzfLuaPathColNr", "Mute")
	hl("FzfLuaPathLineNr", "Mute")
	hl("FzfLuaLiveSym", "PmenuMatch")

	hl("FzfLuaPreviewBorder", "FzfLuaBorder")
	hl("FzfLuaPreviewNormal", "FzfLuaNormal")
	hl("FzfLuaPreviewTitle", "FzfLuaTitle")

	hl("FzfLuaCursor", "Cursor")
	hl("FzfLuaCursorLine", "CursorLine")
	hl("FzfLuaCursorLineNr", "CursorLineNr")

	hl("FzfLuaScrollBorderEmpty", "None")
	hl("FzfLuaScrollBorderFull", "PmenuThumb")
	hl("FzfLuaScrollFloatEmpty", "PmenuSbar")
	hl("FzfLuaScrollFloatFull", "PmenuThumb")

	hl("FzfLuaHelpNormal", "FzfLuaNormal")
	hl("FzfLuaHelpBorder", "FzfLuaBorder")

	hl("FzfLuaBufName", { fg = "fg" })
	hl("FzfLuaBufNr", "Mute")
	hl("FzfLuaBufFlagCur", "Mute")
	hl("FzfLuaBufFlagAlt", "Mute")

	hl("FzfLuaTabTitle", { fg = "fg" })
	hl("FzfLuaTabMarker", "Mute")

	hl("FzfLuaDirIcon", "Icon")
	hl("FzfLuaDirPart", "Directory")
	hl("FzfLuaFilePart", { fg = "fg" })

	hl("FzfLuaFzfNormal", "FzfLuaNormal")
	hl("FzfLuaFzfCursorLine", "FzfLuaCursorLine")
	hl("FzfLuaFzfMatch", "PmenuMatch")
	hl("FzfLuaFzfBorder", "FzfLuaBorder")
	hl("FzfLuaFzfScrollbar", "FzfLuaFzfBorder")
	hl("FzfLuaFzfSeparator", "FzfLuaFzfBorder")
	hl("FzfLuaFzfGutter", "None")
	hl("FzfLuaFzfHeader", "FzfLuaTitle")
	hl("FzfLuaFzfInfo", "Dim")
	hl("FzfLuaFzfPointer", "Cursor")
	hl("FzfLuaFzfMarker", "FzfLuaFzfPointer")
	hl("FzfLuaFzfSpinner", "FzfLuaFzfInfo")
	hl("FzfLuaFzfPrompt", "Mute")
	hl("FzfLuaFzfQuery", { fg = "fg" })
end

return M
