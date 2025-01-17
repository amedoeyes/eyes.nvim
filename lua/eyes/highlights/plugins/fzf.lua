local M = {}

local utility = require("eyes.utility")
local hl = utility.hl

M.setup = function()
	hl("FzfLuaNormal", { link = "Normal" })
	hl("FzfLuaBorder", { link = "Border" })
	hl("FzfLuaTitle", { link = "Title" })
	hl("FzfLuaBackdrop", { bg = "black" })
	hl("FzfLuaHeaderBind", { link = "Mute" })
	hl("FzfLuaHeaderText", { link = "Mute" })
	hl("FzfLuaSearch", { link = "IncSearch" })
	hl("FzfLuaPathColNr", { link = "Mute" })
	hl("FzfLuaPathLineNr", { link = "Mute" })
	hl("FzfLuaLiveSym", { link = "PmenuMatch" })

	hl("FzfLuaPreviewBorder", { link = "FzfLuaBorder" })
	hl("FzfLuaPreviewNormal", { link = "FzfLuaNormal" })
	hl("FzfLuaPreviewTitle", { link = "FzfLuaTitle" })

	hl("FzfLuaCursor", { link = "Cursor" })
	hl("FzfLuaCursorLine", { link = "CursorLine" })
	hl("FzfLuaCursorLineNr", { link = "CursorLineNr" })

	hl("FzfLuaScrollBorderEmpty", { link = "None" })
	hl("FzfLuaScrollBorderFull", { link = "PmenuThumb" })
	hl("FzfLuaScrollFloatEmpty", { link = "PmenuSbar" })
	hl("FzfLuaScrollFloatFull", { link = "PmenuThumb" })

	hl("FzfLuaHelpNormal", { link = "FzfLuaNormal" })
	hl("FzfLuaHelpBorder", { link = "FzfLuaBorder" })

	hl("FzfLuaBufName", { fg = "fg" })
	hl("FzfLuaBufNr", { link = "Mute" })
	hl("FzfLuaBufFlagCur", { link = "Mute" })
	hl("FzfLuaBufFlagAlt", { link = "Mute" })

	hl("FzfLuaTabTitle", { fg = "fg" })
	hl("FzfLuaTabMarker", { link = "Mute" })

	hl("FzfLuaDirIcon", { link = "Icon" })
	hl("FzfLuaDirPart", { link = "Directory" })
	hl("FzfLuaFilePart", { fg = "fg" })

	hl("FzfLuaFzfNormal", { link = "FzfLuaNormal" })
	hl("FzfLuaFzfCursorLine", { link = "FzfLuaCursorLine" })
	hl("FzfLuaFzfMatch", { link = "PmenuMatch" })
	hl("FzfLuaFzfBorder", { link = "FzfLuaBorder" })
	hl("FzfLuaFzfScrollbar", { link = "FzfLuaFzfBorder" })
	hl("FzfLuaFzfSeparator", { link = "FzfLuaFzfBorder" })
	hl("FzfLuaFzfGutter", { link = "None" })
	hl("FzfLuaFzfHeader", { link = "FzfLuaTitle" })
	hl("FzfLuaFzfInfo", { link = "Dim" })
	hl("FzfLuaFzfPointer", { link = "Cursor" })
	hl("FzfLuaFzfMarker", { link = "FzfLuaFzfPointer" })
	hl("FzfLuaFzfSpinner", { link = "FzfLuaFzfInfo" })
	hl("FzfLuaFzfPrompt", { link = "Mute" })
	hl("FzfLuaFzfQuery", { fg = "fg" })
end

return M
