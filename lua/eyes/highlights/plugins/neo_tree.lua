local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("NeoTreeDimText", { fg = palette.hex05 })
	hl("NeoTreeDotfile", { fg = palette.hex05 })

	hl("NeoTreeFilterTerm", { fg = palette.hex10 })
	hl("NeoTreeTitleBar", { fg = palette.hex10, bg = palette.hex04 })

	hl("NeoTreeGitAdded", { link = "Icon" })
	hl("NeoTreeGitConflict", { link = "Icon" })
	hl("NeoTreeGitDeleted", { link = "Icon" })
	hl("NeoTreeGitIgnored", { link = "Icon" })
	hl("NeoTreeGitModified", { link = "Icon" })
	hl("NeoTreeGitUnstaged", { link = "Icon" })
	hl("NeoTreeGitUntracked", { link = "Icon" })
	hl("NeoTreeGitStaged", { link = "Icon" })

	hl("NeoTreeModified", { link = "Icon" })
end

return M
