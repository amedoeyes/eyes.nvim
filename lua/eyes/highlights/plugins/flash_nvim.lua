local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("FlashBackdrop", "Dim")
	hl("FlashCurrent", { fg = "fg" })
	hl("FlashCursor", "Cursor")
	hl("FlashLabel", "Highlight")
	hl("FlashMatch", { fg = "fg" })
	hl("FlashPrompt", { fg = "fg" })
	hl("FlashPromptIcon", "Icon")
end

return M
