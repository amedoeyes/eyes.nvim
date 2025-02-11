local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette")

M.setup = function()
	hl("LeapMatch", "Search")
	hl("LeapLabelPrimary", { fg = palette.hex10, bg = palette.hex05 })
	hl("LeapLabelSecondary", { fg = palette.hex10, bg = palette.hex02 })
	hl("LeapBackdrop", "Comment")
end

return M
