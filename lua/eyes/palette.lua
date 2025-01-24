local M = {}

local config = require("eyes.config")

---@class eyes.Palette
---@field hex00 string?
---@field hex01 string?
---@field hex02 string?
---@field hex03 string?
---@field hex04 string?
---@field hex05 string?
---@field hex06 string?
---@field hex07 string?
---@field hex08 string?
---@field hex09 string?
---@field hex10 string?
---@field hex11 string?
---@field hex12 string?
---@field hex13 string?
---@field hex14 string?
---@field hex15 string?

---@type eyes.Palette
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
}

---@type eyes.Palette
M.light = {
	hex00 = "#FFFFFF",
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
}

---@type eyes.Palette
M.palette = {}

M.setup = function()
	local palette = config.options.palette
	local extend = config.options.extend

	if palette ~= "dark" and palette ~= "light" then
		vim.notify("Unrecognized palette", vim.log.levels.WARN)
	end

	M.palette = vim.tbl_extend("force", palette == "light" and M.light or M.dark, extend.palette)
end

return M
