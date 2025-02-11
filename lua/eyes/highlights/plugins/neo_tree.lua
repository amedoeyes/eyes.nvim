local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette")

M.setup = function()
	hl("NeoTreeDimText", { fg = palette.hex05 })
	hl("NeoTreeDotfile", { fg = palette.hex05 })

	hl("NeoTreeFilterTerm", { fg = palette.hex10 })
	hl("NeoTreeTitleBar", { fg = palette.hex10, bg = palette.hex04 })

	hl("NeoTreeGitAdded", "Icon")
	hl("NeoTreeGitConflict", "Icon")
	hl("NeoTreeGitDeleted", "Icon")
	hl("NeoTreeGitIgnored", "Icon")
	hl("NeoTreeGitModified", "Icon")
	hl("NeoTreeGitUnstaged", "Icon")
	hl("NeoTreeGitUntracked", "Icon")
	hl("NeoTreeGitStaged", "Icon")

	hl("NeoTreeModified", "Icon")
end

return M
