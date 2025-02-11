local opts = require("eyes.config")
local utility = require("eyes.utility")

local statusline_hl = utility.get_hl("StatusLine")
local bg = not opts.transparent and string.format("#%06X", statusline_hl.bg) or nil
local fg = string.format("#%06X", statusline_hl.fg)

local statusline_nc_hl = utility.get_hl("StatusLineNC")
local nc_bg = not opts.transparent and string.format("#%06X", statusline_nc_hl.bg) or nil
local nc_fg = string.format("#%06X", statusline_nc_hl.fg)

local sections = {
	a = { bg = bg, fg = fg, gui = "bold" },
	b = { bg = bg, fg = fg },
	c = { bg = bg, fg = fg },
}

local sections_inactive = {
	a = { bg = nc_bg, fg = nc_fg, gui = "bold" },
	b = { bg = nc_bg, fg = nc_fg },
	c = { bg = nc_bg, fg = nc_fg },
}

return {
	normal = sections,
	insert = sections,
	visual = sections,
	replace = sections,
	command = sections,
	inactive = sections_inactive,
}
