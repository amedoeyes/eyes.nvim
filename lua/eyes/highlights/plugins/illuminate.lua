local M = {}

local utility = require("eyes.utility")
local hl = utility.hl

M.setup = function()
	hl("IlluminatedWordText", "LspReferenceText")
	hl("IlluminatedWordRead", "LspReferenceRead")
	hl("IlluminatedWordWrite", "LspReferenceWrite")
end

return M
