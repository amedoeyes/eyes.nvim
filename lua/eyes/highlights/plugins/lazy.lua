local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("LazyButton", { link = "Button" })
	hl("LazyButtonActive", { link = "ButtonActive" })
	hl("LazyH1", { link = "ButtonActive" })
	hl("LazyProp", { link = "Special" })
	hl("LazyDimmed", { link = "Comment" })
end

return M
