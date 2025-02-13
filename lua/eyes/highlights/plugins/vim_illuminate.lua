local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("IlluminatedWordText", "LspReferenceText")
	hl("IlluminatedWordRead", "LspReferenceRead")
	hl("IlluminatedWordWrite", "LspReferenceWrite")
end

return M
