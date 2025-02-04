local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("Border", { fg = palette.hex04 })
	hl("Button", { fg = palette.hex06 })
	hl("ButtonActive", { fg = "fg", bold = true })
	hl("Dim", { fg = palette.hex04 })
	hl("Mute", { fg = palette.hex06 })
	hl("Highlight", { fg = "fg", bg = palette.hex02 })
	hl("Icon", { fg = "fg" })
end

return M
