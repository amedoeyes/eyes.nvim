local M = {}

local utility = require("eyes.utility")
local hl = utility.hl

M.setup = function()
	hl("RenderMarkdownH1", "@markup.heading.1.markdown")
	hl("RenderMarkdownH2", "@markup.heading.2.markdown")
	hl("RenderMarkdownH3", "@markup.heading.3.markdown")
	hl("RenderMarkdownH4", "@markup.heading.4.markdown")
	hl("RenderMarkdownH5", "@markup.heading.5.markdown")
	hl("RenderMarkdownH6", "@markup.heading.6.markdown")

	hl("RenderMarkdownH1Bg", "ColorColumn")
	hl("RenderMarkdownH2Bg", "ColorColumn")
	hl("RenderMarkdownH3Bg", "ColorColumn")
	hl("RenderMarkdownH4Bg", "ColorColumn")
	hl("RenderMarkdownH5Bg", "ColorColumn")
	hl("RenderMarkdownH6Bg", "ColorColumn")

	hl("RenderMarkdownCode", "ColorColumn")
	hl("RenderMarkdownCodeInline", "ColorColumn")
	hl("RenderMarkdownMath", "@markup.math")

	hl("RenderMarkdownQuote", "@markup.quote")
	hl("RenderMarkdownSuccess", "@markup.quote")
	hl("RenderMarkdownInfo", "@markup.quote")
	hl("RenderMarkdownHint", "@markup.quote")
	hl("RenderMarkdownWarn", "@markup.quote")
	hl("RenderMarkdownError", "@markup.quote")

	hl("RenderMarkdownDash", "Border")
	hl("RenderMarkdownSign", "SignColumn")

	hl("RenderMarkdownLink", "@markup.link")
	hl("RenderMarkdownWikiLink", "@markup.link")

	hl("RenderMarkdownBullet", "@markup.list")
	hl("RenderMarkdownUnchecked", "@markup.list.unchecked")
	hl("RenderMarkdownChecked", "@markup.list.checked")
	hl("RenderMarkdownTodo", "@markup.list")

	hl("RenderMarkdownTableHead", "Border")
	hl("RenderMarkdownTableRow", "Border")
	hl("RenderMarkdownTableFill", "none")
end

return M
