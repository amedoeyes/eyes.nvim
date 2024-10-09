local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("CmpItemAbbr", { fg = palette.hex10 })
	hl("CmpItemAbbrDeprecated", { fg = palette.hex04, strikethrough = true })
	hl("CmpItemAbbrMatch", { fg = palette.hex10 })
	hl("CmpItemAbbrMatchFuzzy", { fg = palette.hex10 })
	hl("CmpItemKind", { fg = palette.hex10 })
	hl("CmpItemMenu", { fg = palette.hex10 })
end

return M
