local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("NotifyERRORBorder", { link = "Border" })
	hl("NotifyWARNBorder", { link = "Border" })
	hl("NotifyINFOBorder", { link = "Border" })
	hl("NotifyDEBUGBorder", { link = "Border" })
	hl("NotifyTRACEBorder", { link = "Border" })

	hl("NotifyERRORIcon", { link = "Icon" })
	hl("NotifyWARNIcon", { link = "Icon" })
	hl("NotifyINFOIcon", { link = "Icon" })
	hl("NotifyDEBUGIcon", { link = "Icon" })
	hl("NotifyTRACEIcon", { link = "Icon" })

	hl("NotifyERRORTitle", { link = "Title" })
	hl("NotifyWARNTitle", { link = "Title" })
	hl("NotifyINFOTitle", { link = "Title" })
	hl("NotifyDEBUGTitle", { link = "Title" })
	hl("NotifyTRACETitle", { link = "Title" })

	hl("NotifyERRORBody", { link = "NormalFloat" })
	hl("NotifyWARNBody", { link = "NormalFloat" })
	hl("NotifyINFOBody", { link = "NormalFloat" })
	hl("NotifyDEBUGBody", { link = "NormalFloat" })
	hl("NotifyTRACEBody", { link = "NormalFloat" })
end

return M
