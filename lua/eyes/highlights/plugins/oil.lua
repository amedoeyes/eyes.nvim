local M = {}

local utility = require("eyes.utility")
local hl = utility.hl

M.setup = function()
	hl("OilDir", { link = "Directory" })
	hl("OilDirIcon", { link = "Icon" })
	hl("OilSocket", { link = "Mute" })

	hl("OilChange", { fg = "fg" })
	hl("OilCopy", { fg = "fg" })
	hl("OilCreate", { fg = "fg" })
	hl("OilDelete", { fg = "fg" })
	hl("OilMove", { fg = "fg" })
	hl("OilPurge", { fg = "fg" })
	hl("OilRestore", { fg = "fg" })
	hl("OilTrash", { fg = "fg" })

	hl("OilLinkTarget", { link = "Mute" })
	hl("OilOrphanLinkTarget", { link = "Mute" })
	hl("OilTrashSourcePath", { link = "Mute" })

	hl("OilHidden", { link = "Dim" })
	hl("OilDirHidden", { link = "OilHidden" })
	hl("OilFileHidden", { link = "OilHidden" })
	hl("OilLinkHidden", { link = "OilHidden" })
	hl("OilLinkTargetHidden", { link = "OilHidden" })
	hl("OilOrphanLinkHidden", { link = "OilHidden" })
	hl("OilOrphanLinkTargetHidden", { link = "OilHidden" })
	hl("OilSocketHidden", { link = "OilHidden" })
end

return M
