local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("IlluminatedWordText", { fg = palette.hex10, bg = palette.hex02 })
	hl("IlluminatedWordRead", { fg = palette.hex10, bg = palette.hex02 })
	hl("IlluminatedWordWrite", { fg = palette.hex10, bg = palette.hex02 })
end

return M
