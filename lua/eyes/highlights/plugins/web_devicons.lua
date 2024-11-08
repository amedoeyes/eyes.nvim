local M = {}

local utility = require("eyes.utility")
local hl = utility.hl

M.setup = function()
	local ok, devicons = pcall(require, "nvim-web-devicons")
	if ok then
		devicons.setup({
			color_icons = false,
			default = true,
			override = {
				["default_icon"] = {
					icon = "",
					name = "Default",
				},
			},
		})
		hl("DevIconDefault", { link = "Icon" })
	end
end

return M
