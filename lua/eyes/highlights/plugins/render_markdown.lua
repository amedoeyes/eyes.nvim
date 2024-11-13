local M = {}

local utility = require("eyes.utility")
local hl = utility.hl

M.setup = function()
	hl("RenderMarkdownH1", { link = "@markup.heading.1.markdown" })
	hl("RenderMarkdownH2", { link = "@markup.heading.2.markdown" })
	hl("RenderMarkdownH3", { link = "@markup.heading.3.markdown" })
	hl("RenderMarkdownH4", { link = "@markup.heading.4.markdown" })
	hl("RenderMarkdownH5", { link = "@markup.heading.5.markdown" })
	hl("RenderMarkdownH6", { link = "@markup.heading.6.markdown" })

	hl("RenderMarkdownH1Bg", { link = "ColorColumn" })
	hl("RenderMarkdownH2Bg", { link = "ColorColumn" })
	hl("RenderMarkdownH3Bg", { link = "ColorColumn" })
	hl("RenderMarkdownH4Bg", { link = "ColorColumn" })
	hl("RenderMarkdownH5Bg", { link = "ColorColumn" })
	hl("RenderMarkdownH6Bg", { link = "ColorColumn" })

	hl("RenderMarkdownCode", { link = "ColorColumn" })
	hl("RenderMarkdownCodeInline", { link = "ColorColumn" })
	hl("RenderMarkdownMath", { link = "@markup.math" })

	hl("RenderMarkdownQuote", { link = "@markup.quote" })
	hl("RenderMarkdownSuccess", { link = "@markup.quote" })
	hl("RenderMarkdownInfo", { link = "@markup.quote" })
	hl("RenderMarkdownHint", { link = "@markup.quote" })
	hl("RenderMarkdownWarn", { link = "@markup.quote" })
	hl("RenderMarkdownError", { link = "@markup.quote" })

	hl("RenderMarkdownDash", { link = "Border" })
	hl("RenderMarkdownSign", { link = "SignColumn" })

	hl("RenderMarkdownLink", { link = "@markup.link" })
	hl("RenderMarkdownWikiLink", { link = "@markup.link" })

	hl("RenderMarkdownBullet", { link = "@markup.list" })
	hl("RenderMarkdownUnchecked", { link = "@markup.list.unchecked" })
	hl("RenderMarkdownChecked", { link = "@markup.list.checked" })
	hl("RenderMarkdownTodo", { link = "@markup.list" })

	hl("RenderMarkdownTableHead", { link = "Border" })
	hl("RenderMarkdownTableRow", { link = "Border" })
	hl("RenderMarkdownTableFill", { link = "none" })
end

return M
