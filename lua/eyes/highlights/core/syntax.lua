local M = {}

local utility = require("eyes.utility")
local hl = utility.hl
local extend = utility.extend
local palette = require("eyes.palette").palette

M.setup = function()
	hl("Comment", extend("Dim", { italic = true }))

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

	hl("Underlined", { underline = true })

	hl("Ignore", "Dim")

	hl("Error", "DiagnosticError")

	hl("Todo", { fg = "fg" })

	hl("@variable", "Identifier")
	hl("@variable.builtin", "Identifier")
	hl("@variable.parameter", "Identifier")
	hl("@variable.parameter.builtin", "Identifier")
	hl("@variable.member", "Identifier")

	hl("@constant", "Constant")
	hl("@constant.builtin", "Constant")
	hl("@constant.macro", "Constant")

	hl("@module", "Structure")
	hl("@module.builtin", "Structure")
	hl("@label", "Label")

	hl("@string", "String")
	hl("@string.documentation", "String")
	hl("@string.regexp", "String")
	hl("@string.escape", "String")
	hl("@string.special", "String")
	hl("@string.special.symbol", "String")
	hl("@string.special.path", "String")
	hl("@string.special.url", { link = "String", underline = true })

	hl("@character", "Character")
	hl("@character.special", "Character")

	hl("@boolean", "Constant")
	hl("@number", "Constant")
	hl("@number.float", "Constant")

	hl("@type", "Type")
	hl("@type.builtin", "Type")
	hl("@type.definition", "Type")

	hl("@attribute", "Statement")
	hl("@attribute.builtin", "Statement")
	hl("@property", "Identifier")

	hl("@function", "Function")
	hl("@function.builtin", "Function")
	hl("@function.call", "Function")
	hl("@function.macro", "Function")

	hl("@function.method", "Function")
	hl("@function.method.call", "Function")

	hl("@constructor", "Function")
	hl("@operator", "Operator")

	hl("@keyword", "Statement")
	hl("@keyword.coroutine", "Statement")
	hl("@keyword.function", "Statement")
	hl("@keyword.operator", "Statement")
	hl("@keyword.import", "Statement")
	hl("@keyword.type", "Statement")
	hl("@keyword.modifier", "Statement")
	hl("@keyword.repeat", "Statement")
	hl("@keyword.return", "Statement")
	hl("@keyword.debug", "Statement")
	hl("@keyword.exception", "Statement")

	hl("@keyword.conditional", "Statement")
	hl("@keyword.conditional.ternary", "Statement")

	hl("@keyword.directive", "PreProc")
	hl("@keyword.directive.define", "Define")

	hl("@punctuation.delimiter", "Delimiter")
	hl("@punctuation.bracket", "Delimiter")
	hl("@punctuation.special", "Delimiter")

	hl("@comment", "Comment")
	hl("@comment.documentation", "Comment")

	hl("@comment.error", "DiagnosticError")
	hl("@comment.warning", "DiagnosticWarn")
	hl("@comment.todo", "Todo")
	hl("@comment.note", "DiagnosticInfo")

	hl("@markup.strong", { bold = true })
	hl("@markup.italic", { italic = true })
	hl("@markup.strikethrough", { strikethrough = true })
	hl("@markup.underline", { underline = true })

	hl("@markup.heading", { bold = true })
	hl("@markup.heading.1", "@markup.heading")
	hl("@markup.heading.2", "@markup.heading")
	hl("@markup.heading.3", "@markup.heading")
	hl("@markup.heading.4", "@markup.heading")
	hl("@markup.heading.5", "@markup.heading")
	hl("@markup.heading.6", "@markup.heading")

	hl("@markup.quote", { fg = palette.hex08 })
	hl("@markup.math", { fg = palette.hex08 })

	hl("@markup.link", { fg = palette.hex08, underline = true })
	hl("@markup.link.label", "@markup.link")
	hl("@markup.link.url", "@markup.link")

	hl("@markup.raw", { fg = palette.hex08 })
	hl("@markup.raw.block", "@markup.raw")

	hl("@markup.list", { fg = "fg" })
	hl("@markup.list.checked", "@markup.list")
	hl("@markup.list.unchecked", "@markup.list")

	hl("@tag", "Tag")
	hl("@tag.builtin", "Tag")
	hl("@tag.attribute", "@property")
	hl("@tag.delimiter", "Delimiter")

	hl("@constructor.lua", "Delimiter")
end

return M
