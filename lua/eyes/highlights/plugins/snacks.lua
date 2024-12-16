local M = {}

local palette = require("eyes.palette").palette
local utility = require("eyes.utility")
local hl = utility.hl

M.setup = function()
	hl("SnacksIndent", { fg = palette.hex03 })
	hl("SnacksIndent1", { fg = palette.hex01 })
	hl("SnacksIndent2", { fg = palette.hex02 })
	hl("SnacksIndent3", { fg = palette.hex03 })
	hl("SnacksIndent4", { fg = palette.hex04 })
	hl("SnacksIndent5", { fg = palette.hex05 })
	hl("SnacksIndent6", { fg = palette.hex06 })
	hl("SnacksIndent7", { fg = palette.hex07 })
	hl("SnacksIndent8", { fg = palette.hex08 })
	hl("SnacksIndentBlank", { link = "NonText" })
	hl("SnacksIndentChunk", { link = "Special" })
	hl("SnacksIndentScope", { link = "Special" })

	hl("SnacksInputNormal", { link = "Normal" })
	hl("SnacksInputBorder", { link = "Border" })
	hl("SnacksInputTitle", { link = "Title" })
	hl("SnacksInputPrompt", { link = "SnacksInputTitle" })
	hl("SnacksInputIcon", { link = "Icon" })
end

return M
