local M = {}

local palette = require("eyes.palette").palette

M.setup = function()
	local ok, devicons = pcall(require, "nvim-web-devicons")
	if ok then
		local icons = devicons.get_icons()
		for _, icon in pairs(icons) do
			icon.color = palette.hex10
		end
	else
		vim.notify("Could not require nvim-web-devicons", vim.log.levels.ERROR)
	end
end

return M
