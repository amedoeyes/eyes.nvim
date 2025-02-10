local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("CodeiumSuggestion", "Comment")
end

return M
