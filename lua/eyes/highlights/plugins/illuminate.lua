local M = {}

local utility = require("eyes.utility")
local hl = utility.hl

M.setup = function()
	hl("IlluminatedWordText", { link = "LspReferenceText" })
	hl("IlluminatedWordRead", { link = "LspReferenceRead" })
	hl("IlluminatedWordWrite", { link = "LspReferenceWrite" })
end

return M
