local mix = require("eyes.utility").mix
local palette = require("eyes.palette")

return {
	["@variable"] = "Identifier",
	["@variable.builtin"] = "Identifier",
	["@variable.parameter"] = "Identifier",
	["@variable.parameter.builtin"] = "Identifier",
	["@variable.member"] = "Identifier",

	["@constant"] = "Constant",
	["@constant.builtin"] = "Constant",
	["@constant.macro"] = "Constant",

	["@module"] = "Structure",
	["@module.builtin"] = "Structure",
	["@label"] = "Label",

	["@string"] = "String",
	["@string.documentation"] = "String",
	["@string.regexp"] = "String",
	["@string.escape"] = "String",
	["@string.special"] = "String",
	["@string.special.symbol"] = "String",
	["@string.special.path"] = "String",
	["@string.special.url"] = mix("Constant", "Underline"),

	["@character"] = "Character",
	["@character.special"] = "Character",

	["@boolean"] = "Constant",
	["@number"] = "Constant",
	["@number.float"] = "Constant",

	["@type"] = "Type",
	["@type.builtin"] = "Type",
	["@type.definition"] = "Type",

	["@attribute"] = "Statement",
	["@attribute.builtin"] = "Statement",
	["@property"] = "Identifier",

	["@function"] = "Function",
	["@function.builtin"] = "Function",
	["@function.call"] = "Function",
	["@function.macro"] = "Function",

	["@function.method"] = "Function",
	["@function.method.call"] = "Function",

	["@constructor"] = "Function",
	["@operator"] = "Operator",

	["@keyword"] = "Statement",
	["@keyword.coroutine"] = "Statement",
	["@keyword.function"] = "Statement",
	["@keyword.operator"] = "Statement",
	["@keyword.import"] = "Statement",
	["@keyword.type"] = "Statement",
	["@keyword.modifier"] = "Statement",
	["@keyword.repeat"] = "Statement",
	["@keyword.return"] = "Statement",
	["@keyword.debug"] = "Statement",
	["@keyword.exception"] = "Statement",

	["@keyword.conditional"] = "Statement",
	["@keyword.conditional.ternary"] = "Statement",

	["@keyword.directive"] = "PreProc",
	["@keyword.directive.define"] = "Define",

	["@punctuation.delimiter"] = "Delimiter",
	["@punctuation.bracket"] = "Delimiter",
	["@punctuation.special"] = "Delimiter",

	["@comment"] = "Comment",
	["@comment.documentation"] = "Comment",

	["@comment.error"] = "DiagnosticError",
	["@comment.warning"] = "DiagnosticWarn",
	["@comment.todo"] = "Todo",
	["@comment.note"] = "DiagnosticInfo",

	["@markup.strong"] = { bold = true },
	["@markup.italic"] = { italic = true },
	["@markup.strikethrough"] = { strikethrough = true },
	["@markup.underline"] = "Underline",

	["@markup.heading"] = { bold = true },
	["@markup.heading.1"] = "@markup.heading",
	["@markup.heading.2"] = "@markup.heading",
	["@markup.heading.3"] = "@markup.heading",
	["@markup.heading.4"] = "@markup.heading",
	["@markup.heading.5"] = "@markup.heading",
	["@markup.heading.6"] = "@markup.heading",

	["@markup.quote"] = { fg = palette.hex08 },
	["@markup.math"] = { fg = palette.hex08 },

	["@markup.link"] = { fg = palette.hex08, sp = palette.hex08, underline = true },
	["@markup.link.label"] = "@markup.link",
	["@markup.link.url"] = "@markup.link",

	["@markup.raw"] = { fg = palette.hex08 },
	["@markup.raw.block"] = "@markup.raw",

	["@markup.list"] = { fg = "fg" },
	["@markup.list.checked"] = "@markup.list",
	["@markup.list.unchecked"] = "@markup.list",

	["@tag"] = "Tag",
	["@tag.builtin"] = "Tag",
	["@tag.attribute"] = "@property",
	["@tag.delimiter"] = "Delimiter",

	["@constructor.lua"] = "Delimiter",
}
