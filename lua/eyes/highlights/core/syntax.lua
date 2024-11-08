local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("Comment", { fg = palette.hex04, italic = true })

	hl("Constant", { fg = palette.hex08 })
	hl("String", { link = "Constant" })
	hl("Character", { link = "Constant" })
	hl("Number", { link = "Constant" })
	hl("Boolean", { link = "Constant" })
	hl("Float", { link = "Constant" })

	hl("Identifier", { fg = "fg" })
	hl("Function", { fg = palette.hex09 })

	hl("Statement", { fg = palette.hex06 })
	hl("Conditional", { link = "Statement" })
	hl("Repeat", { link = "Statement" })
	hl("Label", { fg = palette.hex08 })
	hl("Operator", { fg = palette.hex07 })
	hl("Keyword", { link = "Statement" })
	hl("Exception", { link = "Statement" })

	hl("PreProc", { link = "Statement" })
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

	hl("Underlined", { underline = true })

	hl("Ignore", { fg = palette.hex04 })

	hl("Error", { link = "DiagnosticError" })

	hl("Todo", { fg = "fg" })

	hl("Added", { link = "DiffAdd" })
	hl("Changed", { link = "DiffChange" })
	hl("Removed", { link = "DiffDelete" })

	hl("@variable", { link = "Identifier" })
	hl("@variable.builtin", { link = "Identifier" })
	hl("@variable.parameter", { link = "Identifier" })
	hl("@variable.parameter.builtin", { link = "Identifier" })
	hl("@variable.member", { link = "Identifier" })

	hl("@constant", { link = "Constant" })
	hl("@constant.builtin", { link = "Constant" })
	hl("@constant.macro", { link = "Constant" })

	hl("@module", { link = "Structure" })
	hl("@module.builtin", { link = "Structure" })
	hl("@label", { link = "Label" })

	hl("@string", { link = "String" })
	hl("@string.documentation", { link = "String" })
	hl("@string.regexp", { link = "String" })
	hl("@string.escape", { link = "String" })
	hl("@string.special", { link = "String" })
	hl("@string.special.symbol", { link = "String" })
	hl("@string.special.path", { link = "String" })
	hl("@string.special.url", { link = "String", underline = true })

	hl("@character", { link = "Character" })
	hl("@character.special", { link = "Character" })

	hl("@boolean", { link = "Constant" })
	hl("@number", { link = "Constant" })
	hl("@number.float", { link = "Constant" })

	hl("@type", { link = "Type" })
	hl("@type.builtin", { link = "Type" })
	hl("@type.definition", { link = "Type" })

	hl("@attribute", { link = "Statement" })
	hl("@attribute.builtin", { link = "Statement" })
	hl("@property", { link = "Identifier" })

	hl("@function", { link = "Function" })
	hl("@function.builtin", { link = "Function" })
	hl("@function.call", { link = "Function" })
	hl("@function.macro", { link = "Function" })

	hl("@function.method", { link = "Function" })
	hl("@function.method.call", { link = "Function" })

	hl("@constructor", { link = "Function" })
	hl("@operator", { link = "Operator" })

	hl("@keyword", { link = "Statement" })
	hl("@keyword.coroutine", { link = "Statement" })
	hl("@keyword.function", { link = "Statement" })
	hl("@keyword.operator", { link = "Statement" })
	hl("@keyword.import", { link = "Statement" })
	hl("@keyword.type", { link = "Statement" })
	hl("@keyword.modifier", { link = "Statement" })
	hl("@keyword.repeat", { link = "Statement" })
	hl("@keyword.return", { link = "Statement" })
	hl("@keyword.debug", { link = "Statement" })
	hl("@keyword.exception", { link = "Statement" })

	hl("@keyword.conditional", { link = "Statement" })
	hl("@keyword.conditional.ternary", { link = "Statement" })

	hl("@keyword.directive", { link = "PreProc" })
	hl("@keyword.directive.define", { link = "Define" })

	hl("@punctuation.delimiter", { link = "Delimiter" })
	hl("@punctuation.bracket", { link = "Delimiter" })
	hl("@punctuation.special", { link = "Delimiter" })

	hl("@comment", { link = "Comment" })
	hl("@comment.documentation", { link = "Comment" })

	hl("@comment.error", { link = "DiagnosticError" })
	hl("@comment.warning", { link = "DiagnosticWarn" })
	hl("@comment.todo", { link = "Todo" })
	hl("@comment.note", { link = "DiagnosticInfo" })

	hl("@markup.strong", { bold = true })
	hl("@markup.italic", { italic = true })
	hl("@markup.strikethrough", { strikethrough = true })
	hl("@markup.underline", { underline = true })

	hl("@markup.heading", { bold = true })
	hl("@markup.heading.1", { link = "@markup.heading" })
	hl("@markup.heading.2", { link = "@markup.heading" })
	hl("@markup.heading.3", { link = "@markup.heading" })
	hl("@markup.heading.4", { link = "@markup.heading" })
	hl("@markup.heading.5", { link = "@markup.heading" })
	hl("@markup.heading.6", { link = "@markup.heading" })

	hl("@markup.quote", { fg = palette.hex08 })
	hl("@markup.math", { fg = palette.hex08 })

	hl("@markup.link", { fg = palette.hex08, underline = true })
	hl("@markup.link.label", { link = "@markup.link" })
	hl("@markup.link.url", { link = "@markup.link" })

	hl("@markup.raw", { fg = palette.hex08 })
	hl("@markup.raw.block", { link = "@markup.raw" })

	hl("@markup.list", { fg = "fg" })
	hl("@markup.list.checked", { link = "@markup.list" })
	hl("@markup.list.unchecked", { link = "@markup.list" })

	hl("@diff.plus", { link = "DiffAdd" })
	hl("@diff.minus", { link = "DiffDelete" })
	hl("@diff.delta", { link = "DiffChange" })

	hl("@tag", { link = "Tag" })
	hl("@tag.builtin", { link = "Tag" })
	hl("@tag.attribute", { link = "@property" })
	hl("@tag.delimiter", { link = "Delimiter" })

	hl("@constructor.lua", { link = "Delimiter" })
end

return M
