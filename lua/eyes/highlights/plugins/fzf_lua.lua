local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("FzfLuaNormal", "Normal")
	hl("FzfLuaBorder", "Border")
	hl("FzfLuaTitle", "Title")
	hl("FzfLuaTitleFlags", "Mute")
	hl("FzfLuaBackdrop", { bg = "black" })
	hl("FzfLuaHeaderBind", "Mute")
	hl("FzfLuaHeaderText", "Mute")
	hl("FzfLuaSearch", "Search")
	hl("FzfLuaPathColNr", "Mute")
	hl("FzfLuaPathLineNr", "Mute")
	hl("FzfLuaLiveSym", "PmenuMatch")
	hl("FzfLuaLivePrompt", { fg = "fg" }) -- Not sure what this highlight does

	hl("FzfLuaPreviewBorder", "Border")
	hl("FzfLuaPreviewNormal", "Normal")
	hl("FzfLuaPreviewTitle", "Title")

	hl("FzfLuaCursor", "Cursor")
	hl("FzfLuaCursorLine", "CursorLine")
	hl("FzfLuaCursorLineNr", "CursorLineNr")

	hl("FzfLuaScrollBorderEmpty", "None")
	hl("FzfLuaScrollBorderFull", "PmenuThumb")
	hl("FzfLuaScrollFloatEmpty", "PmenuSbar")
	hl("FzfLuaScrollFloatFull", "PmenuThumb")

	hl("FzfLuaHelpNormal", "Normal")
	hl("FzfLuaHelpBorder", "Border")

	hl("FzfLuaBufName", { fg = "fg" })
	hl("FzfLuaBufNr", "Mute")
	hl("FzfLuaBufId", "Mute")
	hl("FzfLuaBufLineNr", "Mute")
	hl("FzfLuaBufFlagCur", "Mute")
	hl("FzfLuaBufFlagAlt", "Mute")

	hl("FzfLuaTabTitle", { fg = "fg" })
	hl("FzfLuaTabMarker", "Mute")

	hl("FzfLuaDirIcon", "Icon")
	hl("FzfLuaDirPart", "Directory")
	hl("FzfLuaFilePart", { fg = "fg" })

	hl("FzfLuaFzfNormal", "Normal")
	hl("FzfLuaFzfCursorLine", "CursorLine")
	hl("FzfLuaFzfMatch", "PmenuMatch")
	hl("FzfLuaFzfBorder", "Border")
	hl("FzfLuaFzfScrollbar", "Border")
	hl("FzfLuaFzfSeparator", "Border")
	hl("FzfLuaFzfGutter", "None")
	hl("FzfLuaFzfHeader", "Title")
	hl("FzfLuaFzfInfo", "Dim")
	hl("FzfLuaFzfPointer", "Cursor")
	hl("FzfLuaFzfMarker", "Cursor")
	hl("FzfLuaFzfSpinner", "Dim")
	hl("FzfLuaFzfPrompt", "Mute")
	hl("FzfLuaFzfQuery", { fg = "fg" })
end

return M
