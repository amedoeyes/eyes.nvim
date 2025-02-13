local M = {}

local hl = require("eyes.utility").hl

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
		hl("DevIconDefault", "Icon")
	end
end

return M
