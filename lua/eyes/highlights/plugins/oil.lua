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
	hl("OilDirHidden", "OilHidden")
	hl("OilFileHidden", "OilHidden")
	hl("OilLinkHidden", "OilHidden")
	hl("OilLinkTargetHidden", "OilHidden")
	hl("OilOrphanLinkHidden", "OilHidden")
	hl("OilOrphanLinkTargetHidden", "OilHidden")
	hl("OilSocketHidden", "OilHidden")
end

return M
