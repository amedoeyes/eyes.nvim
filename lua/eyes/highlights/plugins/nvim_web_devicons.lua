return function()
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
		require("eyes.utility").hl("DevIconDefault", "Icon")
	end
end
