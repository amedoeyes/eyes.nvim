local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("CodeiumSuggestion", { link = "Comment" })
end

return M
