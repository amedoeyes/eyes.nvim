local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette")

M.setup = function()
	hl("Comment", { fg = palette.hex04, italic = true })

	hl("Constant", { fg = palette.hex08 })
	hl("String", "Constant")
	hl("Character", "Constant")
	hl("Number", "Constant")
	hl("Boolean", "Constant")
	hl("Float", "Constant")

	hl("Identifier", { fg = "fg" })
	hl("Function", { fg = palette.hex09 })

	hl("Statement", { fg = palette.hex06 })
	hl("Conditional", "Statement")
	hl("Repeat", "Statement")
	hl("Label", { fg = palette.hex08 })
	hl("Operator", { fg = palette.hex07 })
	hl("Keyword", "Statement")
	hl("Exception", "Statement")

	hl("PreProc", "Statement")
	hl("Include", "PreProc")
	hl("Define", "PreProc")
	hl("Macro", "PreProc")
	hl("PreCondit", "PreProc")

	hl("Type", { fg = palette.hex07 })
	hl("StorageClass", "Type")
	hl("Structure", "Type")
	hl("Typedef", "Type")

	hl("Special", { fg = palette.hex06 })
	hl("SpecialChar", "Special")
	hl("Tag", { fg = palette.hex08 })
	hl("Delimiter", "Special")
	hl("SpecialComment", "Special")
	hl("Debug", "Special")

	hl("Underlined", "Underline")

	hl("Ignore", { fg = palette.hex04 })

	hl("Error", "DiagnosticError")

	hl("Todo", { fg = "fg" })
end

return M
