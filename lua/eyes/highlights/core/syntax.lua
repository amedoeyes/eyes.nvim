local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("Comment", { fg = palette.hex04, italic = true })
	hl("SpecialKey", { link = "Comment" })
	hl("NonText", { link = "Comment" })

	hl("Constant", { fg = palette.hex08 })
	hl("String", { link = "Constant" })
	hl("Character", { link = "Constant" })
	hl("Number", { link = "Constant" })
	hl("Boolean", { link = "Constant" })
	hl("Float", { link = "Constant" })

	hl("Identifier", { fg = palette.hex10 })
	hl("Function", { fg = palette.hex09 })

	hl("Statement", { fg = palette.hex06 })
	hl("Conditional", { link = "Statement" })
	hl("Repeat", { link = "Statement" })
	hl("Label", { link = "Statement" })
	hl("Operator", { link = "Statement" })
	hl("Keyword", { link = "Statement" })
	hl("Exception", { link = "Statement" })

	hl("PreProc", { fg = palette.hex08 })
	hl("Include", { link = "PreProc" })
	hl("Define", { link = "PreProc" })
	hl("Macro", { link = "PreProc" })
	hl("PreCondit", { link = "PreProc" })

	hl("Type", { fg = palette.hex07 })
	hl("StorageClass", { link = "Type" })
	hl("Structure", { link = "Type" })
	hl("Typedef", { link = "Type" })

	hl("Special", { fg = palette.hex06 })
	hl("SpecialChar", { link = "Special" })
	hl("Tag", { fg = palette.hex08 })
	hl("Delimiter", { link = "Special" })
	hl("SpecialComment", { link = "Special" })
	hl("Debug", { link = "Special" })

	hl("Underlined", { fg = palette.hex10 })

	hl("Ignore", { fg = palette.hex04 })

	hl("Error", { fg = palette.hex10 })

	hl("Todo", { fg = palette.hex07 })

	hl("Conceal", { fg = palette.hex04 })

	hl("Added", { fg = palette.hex08 })
	hl("Changed", { fg = palette.hex06 })
	hl("Removed", { fg = palette.hex04 })

	hl("@constant.builtin", { link = "Constant" })

	hl("@variable", { link = "Identifier" })
	hl("@variable.builtin", { link = "Identifier" })
	hl("@function.builtin", { link = "Function" })
	hl("@constructor.javascript", { link = "Function" })
	hl("@constructor.typescript", { link = "Function" })

	hl("@type.builtin", { link = "Type" })

	hl("@tag.attribute", { link = "@attribute" })
	hl("@tag.builtin", { link = "Tag" })
	hl("@tag.delimiter", { link = "Delimiter" })

	hl("@text.title", { bold = true })
	hl("@text.strong", { bold = true })
	hl("@text.reference", { fg = palette.hex08 })
	hl("@text.uri", { fg = palette.hex09, underline = true })
end

return M
