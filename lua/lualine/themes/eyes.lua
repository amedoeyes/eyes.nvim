local hl = vim.api.nvim_get_hl(0, { name = "StatusLine" })
local hlnc = vim.api.nvim_get_hl(0, { name = "StatusLineNC" })

return {
	normal = {
		a = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg), gui = "bold" },
		b = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg) },
		c = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg) },
	},
	insert = {
		a = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg), gui = "bold" },
		b = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg) },
		c = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg) },
	},
	visual = {
		a = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg), gui = "bold" },
		b = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg) },
		c = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg) },
	},
	replace = {
		a = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg), gui = "bold" },
		b = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg) },
		c = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg) },
	},
	command = {
		a = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg), gui = "bold" },
		b = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg) },
		c = { bg = string.format("#%06X", hl.bg), fg = string.format("#%06X", hl.fg) },
	},
	inactive = {
		a = { bg = string.format("#%06X", hlnc.bg), fg = string.format("#%06X", hlnc.fg), gui = "bold" },
		b = { bg = string.format("#%06X", hlnc.bg), fg = string.format("#%06X", hlnc.fg) },
		c = { bg = string.format("#%06X", hlnc.bg), fg = string.format("#%06X", hlnc.fg) },
	},
}
