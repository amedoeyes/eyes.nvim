local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("LeapMatch", { link = "Search" })
	hl("LeapLabelPrimary", { fg = palette.hex13, bg = palette.hex05 })
	hl("LeapLabelSecondary", { fg = palette.hex12, bg = palette.hex02 })
	hl("LeapBackdrop", { link = "Comment" })
end

return M
