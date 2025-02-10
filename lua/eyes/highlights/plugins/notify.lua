local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("NotifyERRORBorder", "Border")
	hl("NotifyWARNBorder", "Border")
	hl("NotifyINFOBorder", "Border")
	hl("NotifyDEBUGBorder", "Border")
	hl("NotifyTRACEBorder", "Border")

	hl("NotifyERRORIcon", "Icon")
	hl("NotifyWARNIcon", "Icon")
	hl("NotifyINFOIcon", "Icon")
	hl("NotifyDEBUGIcon", "Icon")
	hl("NotifyTRACEIcon", "Icon")

	hl("NotifyERRORTitle", "Title")
	hl("NotifyWARNTitle", "Title")
	hl("NotifyINFOTitle", "Title")
	hl("NotifyDEBUGTitle", "Title")
	hl("NotifyTRACETitle", "Title")

	hl("NotifyERRORBody", "NormalFloat")
	hl("NotifyWARNBody", "NormalFloat")
	hl("NotifyINFOBody", "NormalFloat")
	hl("NotifyDEBUGBody", "NormalFloat")
	hl("NotifyTRACEBody", "NormalFloat")
end

return M
