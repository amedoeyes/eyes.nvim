local M = {}

local utility = require("eyes.utility")
local hl = utility.hl
local extend = utility.extend
local mix = utility.mix

local palette = require("eyes.palette").palette

M.setup = function()
	hl("Helpviewtitle", mix("@markup.heading", "ColorColumn"))
	hl("HelpviewHeading1", mix("@markup.heading.1", "ColorColumn"))
	hl("HelpviewHeading2", mix("@markup.heading.2", "ColorColumn"))
	hl("HelpviewHeading3", mix("@markup.heading.3", "ColorColumn"))
	hl("HelpviewHeading4", mix("@markup.heading.4", "ColorColumn"))

	hl("HelpviewInlineCode", { link = "ColorColumn" })
	hl("HelpviewCodeLanguage", extend("ColorColumn", { fg = palette.hex06 }))
	hl("HelpviewCode", { link = "ColorColumn" })

	hl("HelpviewGradient1", { fg = palette.hex01 })
	hl("HelpviewGradient2", { fg = palette.hex02 })
	hl("HelpviewGradient3", { fg = palette.hex03 })
	hl("HelpviewGradient4", { fg = palette.hex04 })
	hl("HelpviewGradient5", { fg = palette.hex05 })
	hl("HelpviewGradient6", { fg = palette.hex06 })
	hl("HelpviewGradient7", { fg = palette.hex07 })
	hl("HelpviewGradient8", { fg = palette.hex08 })
	hl("HelpviewGradient9", { fg = palette.hex09 })
	hl("HelpviewGradient10", { fg = palette.hex10 })

	hl("HelpviewTaglink", extend("ColorColumn", { fg = palette.hex08 }))
	hl("HelpviewOptionlink", extend("ColorColumn", { fg = palette.hex08 }))
	hl("HelpviewMentionlink", { link = "@markup.link" })
end

return M
