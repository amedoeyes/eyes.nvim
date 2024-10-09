local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("SpellBad", { sp = palette.hex10, undercurl = true })
	hl("SpellLocal", { sp = palette.hex10, undercurl = true })
	hl("SpellCap", { sp = palette.hex10, undercurl = true })
	hl("SpellRare", { sp = palette.hex10, undercurl = true })
end

return M
