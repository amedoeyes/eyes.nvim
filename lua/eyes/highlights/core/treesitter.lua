local palette = require("eyes.palette")

return {
	["@attribute"] = { fg = palette.hex06 },
	["@attribute.builtin"] = "@attribute",

	["@boolean"] = { fg = palette.hex08 },

	["@character"] = { fg = palette.hex08 },
	["@character.special"] = "@character",

	["@comment"] = { fg = palette.hex04, italic = true },
	["@comment.documentation"] = "@comment",
	["@comment.error"] = "DiagnosticError",
	["@comment.note"] = "DiagnosticInfo",
	["@comment.todo"] = "DiagnosticHint",
	["@comment.warning"] = "DiagnosticWarn",

	["@constant"] = { fg = palette.hex08 },
	["@constant.builtin"] = "@constant",
	["@constant.macro"] = "@constant",

	["@constructor"] = { fg = palette.hex09 },
	["@constructor.lua"] = "@punctuation",

	["@function"] = { fg = palette.hex09 },
	["@function.builtin"] = "@function",
	["@function.call"] = "@function",
	["@function.macro"] = "@function",
	["@function.method"] = "@function",
	["@function.method.call"] = "@function",

	["@keyword"] = { fg = palette.hex06 },
	["@keyword.conditional"] = "@keyword",
	["@keyword.conditional.ternary"] = "@keyword.conditional",
	["@keyword.coroutine"] = "@keyword",
	["@keyword.debug"] = "@keyword",
	["@keyword.directive"] = "@keyword",
	["@keyword.directive.define"] = "@keyword.directive",
	["@keyword.exception"] = "@keyword",
	["@keyword.function"] = "@keyword",
	["@keyword.import"] = "@keyword",
	["@keyword.modifier"] = "@keyword",
	["@keyword.operator"] = "@keyword",
	["@keyword.repeat"] = "@keyword",
	["@keyword.return"] = "@keyword",
	["@keyword.type"] = "@keyword",

	["@label"] = { fg = palette.hex08 },

	["@markup.heading"] = { fg = palette.hex10, bold = true },
	["@markup.heading.1"] = "@markup.heading",
	["@markup.heading.2"] = "@markup.heading",
	["@markup.heading.3"] = "@markup.heading",
	["@markup.heading.4"] = "@markup.heading",
	["@markup.heading.5"] = "@markup.heading",
	["@markup.heading.6"] = "@markup.heading",
	["@markup.italic"] = { italic = true },
	["@markup.link"] = { fg = palette.hex08, sp = palette.hex08, underline = true },
	["@markup.link.label"] = "@markup.link",
	["@markup.link.url"] = "@markup.link",
	["@markup.list"] = { fg = "fg" },
	["@markup.list.checked"] = "@markup.list",
	["@markup.list.unchecked"] = "@markup.list",
	["@markup.math"] = { fg = palette.hex08 },
	["@markup.quote"] = { fg = palette.hex08 },
	["@markup.raw"] = { fg = palette.hex08 },
	["@markup.raw.block"] = "@markup.raw",
	["@markup.strikethrough"] = { strikethrough = true },
	["@markup.strong"] = { bold = true },
	["@markup.underline"] = { sp = palette.hex10, underline = true },

	["@module"] = { fg = palette.hex07 },
	["@module.builtin"] = "@module",

	["@number"] = { fg = palette.hex08 },
	["@number.float"] = "@number",

	["@operator"] = { fg = palette.hex07 },

	["@property"] = { fg = palette.hex10 },

	["@punctuation"] = { fg = palette.hex06 },
	["@punctuation.bracket"] = "@punctuation",
	["@punctuation.delimiter"] = "@punctuation",
	["@punctuation.special"] = "@punctuation",

	["@string"] = { fg = palette.hex08 },
	["@string.documentation"] = "@string",
	["@string.escape"] = "@string",
	["@string.regexp"] = "@string",
	["@string.special"] = "@string",
	["@string.special.path"] = "@string",
	["@string.special.symbol"] = "@string",
	["@string.special.url"] = { fg = palette.hex08, sp = palette.hex08, underline = true },

	["@tag"] = { fg = palette.hex08 },
	["@tag.attribute"] = "@property",
	["@tag.builtin"] = "@tag",
	["@tag.delimiter"] = "@punctuation",

	["@type"] = { fg = palette.hex07 },
	["@type.builtin"] = "@type",
	["@type.definition"] = "@type",

	["@variable"] = { fg = palette.hex10 },
	["@variable.builtin"] = "@variable",
	["@variable.member"] = "@variable",
	["@variable.parameter"] = "@variable",
	["@variable.parameter.builtin"] = "@variable",
}
