local M = {}

local utility = require("eyes.utility")
local hl = utility.hl
local get_hl = utility.get_hl
local extend = utility.extend
local mix = utility.mix

local palette = require("eyes.palette").palette

M.setup = function()
	hl("MarkviewBlockQuoteWarn", "@markup.quote")
	hl("MarkviewBlockQuoteSpecial", "@markup.quote")
	hl("MarkviewBlockQuoteNote", "@markup.quote")
	hl("MarkviewBlockQuoteDefault", "@markup.quote")
	hl("MarkviewBlockQuoteOk", "@markup.quote")
	hl("MarkviewBlockQuoteError", "@markup.quote")

	hl("MarkviewCheckboxCancelled", { fg = get_hl("Comment").fg })
	hl("MarkviewCheckboxChecked", "@markup.list.checked")
	hl("MarkviewCheckboxPending", "MarkviewCheckboxUnchecked")
	hl("MarkviewCheckboxProgress", "MarkviewCheckboxUnchecked")
	hl("MarkviewCheckboxUnchecked", "@markup.list.unchecked")
	-- hl("MarkviewCheckboxStriked", {}) -- seems to be ignored by the plugin :/

	hl("MarkviewInlineCode", "ColorColumn")
	hl("MarkviewCodeInfo", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewCode", "ColorColumn")

	hl("MarkviewIcon1", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewIcon1Sign", "Icon")
	hl("MarkviewIcon1Fg", "Icon")
	hl("MarkviewIcon2", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewIcon2Sign", "Icon")
	hl("MarkviewIcon2Fg", "Icon")
	hl("MarkviewIcon3", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewIcon3Sign", "Icon")
	hl("MarkviewIcon3Fg", "Icon")
	hl("MarkviewIcon4", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewIcon4Sign", "Icon")
	hl("MarkviewIcon4Fg", "Icon")
	hl("MarkviewIcon5", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewIcon5Sign", "Icon")
	hl("MarkviewIcon5Fg", "Icon")
	hl("MarkviewIcon6", extend("ColorColumn", { fg = palette.hex06 }))
	hl("MarkviewIcon6Sign", "Icon")
	hl("MarkviewIcon6Fg", "Icon")
	--
	hl("MarkviewHeading1Sign", "Icon")
	hl("MarkviewHeading1", mix("@markup.heading.1", "ColorColumn"))
	hl("MarkviewHeading2Sign", "Icon")
	hl("MarkviewHeading2", mix("@markup.heading.2", "ColorColumn"))
	hl("MarkviewHeading3Sign", "Icon")
	hl("MarkviewHeading3", mix("@markup.heading.3", "ColorColumn"))
	hl("MarkviewHeading4Sign", "Icon")
	hl("MarkviewHeading4", mix("@markup.heading.4", "ColorColumn"))
	hl("MarkviewHeading5Sign", "Icon")
	hl("MarkviewHeading5", mix("@markup.heading.5", "ColorColumn"))
	hl("MarkviewHeading6Sign", "Icon")
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

	hl("MarkviewLatexSubscript", "@markup.math")
	hl("MarkviewLatexSuperscript", "@markup.math")

	hl("MarkviewListItemStar", "@markup.list")
	hl("MarkviewListItemPlus", "@markup.list")
	hl("MarkviewListItemMinus", "@markup.list")

	hl("MarkviewEmail", "@markup.link")
	hl("MarkviewImageLink", "@markup.link")
	hl("MarkviewHyperlink", "@markup.link")

	hl("MarkviewTableHeader", "Border")
	hl("MarkviewTableBorder", "Border")
	hl("MarkviewTableAlignCenter", "Border")
	hl("MarkviewTableAlignLeft", "Border")
	hl("MarkviewTableAlignRight", "Border")
end

return M
