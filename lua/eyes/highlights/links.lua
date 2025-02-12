local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette")

M.setup = function()
	hl("Border", { fg = palette.hex04 })
	hl("Button", { fg = palette.hex06 })
	hl("ButtonActive", { fg = "fg", bold = true })
	hl("Dim", { fg = palette.hex04 })
	hl("Mute", { fg = palette.hex06 })
	hl("Highlight", { fg = "fg", bg = palette.hex02 })
	hl("Icon", { fg = "fg" })
	hl("Deprecated", { fg = palette.hex04, strikethrough = true })

	hl("Bold", { bold = true })
	hl("Italic", { italic = true })
	hl("Reverse", { reverse = true })
	hl("Standout", { standout = true })
	hl("Strikethrough", { strikethrough = true })
	hl("Undercurl", { sp = "fg", undercurl = true })
	hl("Underdashed", { sp = "fg", underdashed = true })
	hl("Underdotted", { sp = "fg", underdotted = true })
	hl("Underdouble", { sp = "fg", underdouble = true })
	hl("Underline", { sp = "fg", underline = true })
end

return M
