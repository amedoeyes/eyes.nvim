local palette = require("eyes.palette")

return {
	Comment = { fg = palette.hex04, italic = true },

	Constant = { fg = palette.hex08 },
	String = "Constant",
	Character = "Constant",
	Number = "Constant",
	Boolean = "Constant",
	Float = "Constant",

	Identifier = { fg = "fg" },
	Function = { fg = palette.hex09 },

	Statement = { fg = palette.hex06 },
	Conditional = "Statement",
	Repeat = "Statement",
	Label = { fg = palette.hex08 },
	Operator = { fg = palette.hex07 },
	Keyword = "Statement",
	Exception = "Statement",

	PreProc = "Statement",
	Include = "PreProc",
	Define = "PreProc",
	Macro = "PreProc",
	PreCondit = "PreProc",

	Type = { fg = palette.hex07 },
	StorageClass = "Type",
	Structure = "Type",
	Typedef = "Type",

	Special = { fg = palette.hex06 },
	SpecialChar = "Special",
	Tag = { fg = palette.hex08 },
	Delimiter = "Special",
	SpecialComment = "Special",
	Debug = "Special",

	Underlined = "Underline",

	Ignore = { fg = palette.hex04 },

	Error = "DiagnosticError",

	Todo = { fg = "fg" },

	Whitespace = { fg = palette.hex03 },
}
