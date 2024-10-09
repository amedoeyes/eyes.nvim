local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("TelescopeTile", { link = "Title" })
	hl("TelescopeBorder", { link = "Border" })
	hl("TelescopeSelection", { link = "CursorColumn" })
	hl("TelescopePromptTitle", { link = "Title" })
	hl("TelpescopePromptBorder", { link = "Border" })
	hl("TelescopePreviewTitle", { link = "Title" })
	hl("TelescopeResultsTitle", { link = "Title" })
end

return M
