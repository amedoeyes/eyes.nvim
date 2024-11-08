local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("SpellBad", { sp = "fg", undercurl = true })
	hl("SpellLocal", { sp = "fg", undercurl = true })
	hl("SpellCap", { sp = "fg", undercurl = true })
	hl("SpellRare", { sp = "fg", undercurl = true })
end

return M
