local palette = require("eyes.palette")

return {
	DiffAdd = { fg = palette.hex08 },
	DiffChange = { fg = palette.hex06 },
	DiffDelete = { fg = palette.hex04 },
	DiffText = { fg = palette.hex08 },

	Added = "DiffAdd",
	Changed = "DiffChange",
	Removed = "DiffDelete",

	["@diff.plus"] = "DiffAdd",
	["@diff.minus"] = "DiffDelete",
	["@diff.delta"] = "DiffChange",
}
