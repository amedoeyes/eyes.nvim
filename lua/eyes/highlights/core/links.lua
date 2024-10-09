local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("Icon", { fg = palette.hex10 })
	hl("Border", { fg = palette.hex04 })
	hl("Button", { fg = palette.hex06, bg = palette.hex01 })
	hl("ButtonActive", { fg = palette.hex10, bg = palette.hex02 })
end

return M
