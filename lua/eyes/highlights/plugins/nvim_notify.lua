local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("NotifyERRORBorder", "FloatBorder")
	hl("NotifyWARNBorder", "FloatBorder")
	hl("NotifyINFOBorder", "FloatBorder")
	hl("NotifyDEBUGBorder", "FloatBorder")
	hl("NotifyTRACEBorder", "FloatBorder")

	hl("NotifyERRORIcon", "Icon")
	hl("NotifyWARNIcon", "Icon")
	hl("NotifyINFOIcon", "Icon")
	hl("NotifyDEBUGIcon", "Icon")
	hl("NotifyTRACEIcon", "Icon")

	hl("NotifyERRORTitle", "FloatTitle")
	hl("NotifyWARNTitle", "FloatTitle")
	hl("NotifyINFOTitle", "FloatTitle")
	hl("NotifyDEBUGTitle", "FloatTitle")
	hl("NotifyTRACETitle", "FloatTitle")

	hl("NotifyERRORBody", "NormalFloat")
	hl("NotifyWARNBody", "NormalFloat")
	hl("NotifyINFOBody", "NormalFloat")
	hl("NotifyDEBUGBody", "NormalFloat")
	hl("NotifyTRACEBody", "NormalFloat")
end

return M
