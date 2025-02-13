---@type eyes.Palette
local palette = nil

if vim.o.background == "dark" then
	palette = {
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
else
	palette = {
		hex00 = "#FFFFFF",
		hex01 = "#EFEFEF",
		hex02 = "#DFDFDF",
		hex03 = "#CFCFCF",
		hex04 = "#BFBFBF",
		hex05 = "#AFAFAF",
		hex06 = "#9F9F9F",
		hex07 = "#8F8F8F",
		hex08 = "#7F7F7F",
		hex09 = "#6F6F6F",
		hex10 = "#5F5F5F",
	}
end

if palette ~= nil then
	require("eyes.palette").setup(palette)
	require("eyes.highlights").setup()
	vim.g.colors_name = "eyes"
end
