local M = {}

local utility = require("eyes.utility")
local hl = utility.hl
local get_hl = utility.get_hl
local extend = utility.extend
local mix = utility.mix

local palette = require("eyes.palette").palette

M.setup = function()
	hl("MarkviewBlockQuoteWarn", { link = "@markup.quote" })
	hl("MarkviewBlockQuoteSpecial", { link = "@markup.quote" })
	hl("MarkviewBlockQuoteNote", { link = "@markup.quote" })
	hl("MarkviewBlockQuoteDefault", { link = "@markup.quote" })
	hl("MarkviewBlockQuoteOk", { link = "@markup.quote" })
	hl("MarkviewBlockQuoteError", { link = "@markup.quote" })

	hl("MarkviewCheckboxCancelled", { fg = get_hl("Comment").fg })
	hl("MarkviewCheckboxChecked", { link = "@markup.list.checked" })
	hl("MarkviewCheckboxPending", { link = "MarkviewCheckboxUnchecked" })
	hl("MarkviewCheckboxProgress", { link = "MarkviewCheckboxUnchecked" })
	hl("MarkviewCheckboxUnchecked", { link = "@markup.list.unchecked" })
	-- hl("MarkviewCheckboxStriked", {}) -- seems to be ignored by the plugin :/

	hl("MarkviewInlineCode", { link = "ColorColumn" })
	hl("MarkviewCodeInfo", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewCode", { link = "ColorColumn" })

	hl("MarkviewIcon1", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewIcon1Sign", { link = "Icon" })
	hl("MarkviewIcon1Fg", { link = "Icon" })
	hl("MarkviewIcon2", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewIcon2Sign", { link = "Icon" })
	hl("MarkviewIcon2Fg", { link = "Icon" })
	hl("MarkviewIcon3", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewIcon3Sign", { link = "Icon" })
	hl("MarkviewIcon3Fg", { link = "Icon" })
	hl("MarkviewIcon4", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewIcon4Sign", { link = "Icon" })
	hl("MarkviewIcon4Fg", { link = "Icon" })
	hl("MarkviewIcon5", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewIcon5Sign", { link = "Icon" })
	hl("MarkviewIcon5Fg", { link = "Icon" })
	hl("MarkviewIcon6", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewIcon6Sign", { link = "Icon" })
	hl("MarkviewIcon6Fg", { link = "Icon" })
	--
	hl("MarkviewHeading1Sign", { link = "Icon" })
	hl("MarkviewHeading1", mix("@markup.heading.1", "ColorColumn"))
	hl("MarkviewHeading2Sign", { link = "Icon" })
	hl("MarkviewHeading2", mix("@markup.heading.2", "ColorColumn"))
	hl("MarkviewHeading3Sign", { link = "Icon" })
	hl("MarkviewHeading3", mix("@markup.heading.3", "ColorColumn"))
	hl("MarkviewHeading4Sign", { link = "Icon" })
	hl("MarkviewHeading4", mix("@markup.heading.4", "ColorColumn"))
	hl("MarkviewHeading5Sign", { link = "Icon" })
	hl("MarkviewHeading5", mix("@markup.heading.5", "ColorColumn"))
	hl("MarkviewHeading6Sign", { link = "Icon" })
	hl("MarkviewHeading6", mix("@markup.heading.6", "ColorColumn"))

	hl("MarkviewGradient1", { fg = palette.hex01 })
	hl("MarkviewGradient2", { fg = palette.hex02 })
	hl("MarkviewGradient3", { fg = palette.hex03 })
	hl("MarkviewGradient4", { fg = palette.hex04 })
	hl("MarkviewGradient5", { fg = palette.hex05 })
	hl("MarkviewGradient6", { fg = palette.hex06 })
	hl("MarkviewGradient7", { fg = palette.hex07 })
	hl("MarkviewGradient8", { fg = palette.hex08 })
	hl("MarkviewGradient9", { fg = palette.hex09 })
	hl("MarkviewGradient10", { fg = palette.hex10 })

	hl("MarkviewLatexSubscript", { link = "@markup.math" })
	hl("MarkviewLatexSuperscript", { link = "@markup.math" })

	hl("MarkviewListItemStar", { link = "@markup.list" })
	hl("MarkviewListItemPlus", { link = "@markup.list" })
	hl("MarkviewListItemMinus", { link = "@markup.list" })

	hl("MarkviewEmail", { link = "@markup.link" })
	hl("MarkviewImageLink", { link = "@markup.link" })
	hl("MarkviewHyperlink", { link = "@markup.link" })

	hl("MarkviewTableHeader", { link = "Border" })
	hl("MarkviewTableBorder", { link = "Border" })
	hl("MarkviewTableAlignCenter", { link = "Border" })
	hl("MarkviewTableAlignLeft", { link = "Border" })
	hl("MarkviewTableAlignRight", { link = "Border" })
end

return M
