local config = require("eyes.config")
local M = {}

---@class PaletteDark
M.dark = {
	hex00 = "#000000",
	hex01 = "#101010",
	hex02 = "#202020",
	hex03 = "#303030",
	hex04 = "#404040",
	hex05 = "#505050",
	hex06 = "#606060",
	hex07 = "#707070",
	hex08 = "#808080",
	hex09 = "#909090",
	hex10 = "#A0A0A0",
	hex11 = "#B0B0B0",
	hex12 = "#C0C0C0",
	hex13 = "#D0D0D0",
	hex14 = "#E0E0E0",
	hex15 = "#F0F0F0",
}

---@class PaletteLight
M.light = {
	hex00 = "#F0F0F0",
	hex01 = "#E0E0E0",
	hex02 = "#D0D0D0",
	hex03 = "#C0C0C0",
	hex04 = "#B0B0B0",
	hex05 = "#A0A0A0",
	hex06 = "#909090",
	hex07 = "#808080",
	hex08 = "#707070",
	hex09 = "#606060",
	hex10 = "#505050",
	hex11 = "#404040",
	hex12 = "#303030",
	hex13 = "#202020",
	hex14 = "#101010",
	hex15 = "#000000",
}

---@return PaletteDark | PaletteLight
M.setup = function()
	local palette = config.options.palette
	local extend = config.options.extend

	if palette ~= "dark" and palette ~= "light" then
		vim.notify("Unrecognized palette", vim.log.levels.WARN)
	end

	return vim.tbl_extend("force", palette == "light" and M.light or M.dark, extend.palette)
end

return M
