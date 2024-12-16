local M = {}

local utility = require("eyes.utility")
local hl = utility.hl

M.setup = function()
	hl("FzfLuaNormal", { link = "Normal" })
	hl("FzfLuaBorder", { link = "Border" })
	hl("FzfLuaTitle", { link = "Title" })
	hl("FzfLuaBackdrop", { bg = "black" })
	hl("FzfLuaHeaderBind", { link = "Special" })
	hl("FzfLuaHeaderText", { link = "Special" })
	hl("FzfLuaSearch", { link = "IncSearch" })
	hl("FzfLuaPathColNr", { link = "Special" })
	hl("FzfLuaPathLineNr", { link = "Special" })
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
	hl("FzfLuaBufNr", { link = "Special" })
	hl("FzfLuaBufFlagCur", { link = "Special" })
	hl("FzfLuaBufFlagAlt", { link = "Special" })

	hl("FzfLuaTabTitle", { fg = "fg" })
	hl("FzfLuaTabMarker", { link = "Special" })

	hl("FzfLuaDirIcon", { fg = "fg" })
	hl("FzfLuaDirPart", { fg = "fg" })
	hl("FzfLuaFilePart", { fg = "fg" })

	hl("FzfLuaFzfNormal", { link = "FzfLuaNormal" })
	hl("FzfLuaFzfCursorLine", { link = "FzfLuaCursorLine" })
	hl("FzfLuaFzfMatch", { link = "PmenuMatch" })
	hl("FzfLuaFzfBorder", { link = "FzfLuaBorder" })
	hl("FzfLuaFzfScrollbar", { link = "FzfLuaFzfBorder" })
	hl("FzfLuaFzfSeparator", { link = "FzfLuaFzfBorder" })
	hl("FzfLuaFzfGutter", { link = "None" })
	hl("FzfLuaFzfHeader", { link = "FzfLuaTitle" })
	hl("FzfLuaFzfInfo", { link = "NonText" })
	hl("FzfLuaFzfPointer", { link = "Cursor" })
	hl("FzfLuaFzfMarker", { link = "FzfLuaFzfPointer" })
	hl("FzfLuaFzfSpinner", { link = "FzfLuaFzfInfo" })
	hl("FzfLuaFzfPrompt", { link = "Special" })
	hl("FzfLuaFzfQuery", { fg = "fg" })
end

return M
