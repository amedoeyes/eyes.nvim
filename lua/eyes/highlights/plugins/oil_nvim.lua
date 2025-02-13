local M = {}

local utility = require("eyes.utility")
local hl = utility.hl

M.setup = function()
	hl("OilDir", "Directory")
	hl("OilDirIcon", "Icon")
	hl("OilSocket", "Mute")

	hl("OilChange", { fg = "fg" })
	hl("OilCopy", { fg = "fg" })
	hl("OilCreate", { fg = "fg" })
	hl("OilDelete", { fg = "fg" })
	hl("OilMove", { fg = "fg" })
	hl("OilPurge", { fg = "fg" })
	hl("OilRestore", { fg = "fg" })
	hl("OilTrash", { fg = "fg" })

	hl("OilLinkTarget", "Mute")
	hl("OilOrphanLinkTarget", "Mute")
	hl("OilTrashSourcePath", "Mute")

	hl("OilHidden", "Dim")
	hl("OilDirHidden", "Dim")
	hl("OilFileHidden", "Dim")
	hl("OilLinkHidden", "Dim")
	hl("OilLinkTargetHidden", "Dim")
	hl("OilOrphanLinkHidden", "Dim")
	hl("OilOrphanLinkTargetHidden", "Dim")
	hl("OilSocketHidden", "Dim")
end

return M
