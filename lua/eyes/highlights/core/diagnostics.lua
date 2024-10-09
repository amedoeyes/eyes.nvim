local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("DiagnosticError", { fg = palette.hex10 })
	hl("DiagnosticWarn", { fg = palette.hex10 })
	hl("DiagnosticInfo", { fg = palette.hex10 })
	hl("DiagnosticHint", { fg = palette.hex10 })
	hl("DiagnosticOk", { fg = palette.hex10 })

	hl("DiagnosticUnderlineError", { sp = palette.hex10, undercurl = true })
	hl("DiagnosticUnderlineWarn", { sp = palette.hex10, undercurl = true })
	hl("DiagnosticUnderlineInfo", { sp = palette.hex10, undercurl = true })
	hl("DiagnosticUnderlineHint", { sp = palette.hex10, undercurl = true })
	hl("DiagnosticUnderlineOk", { sp = palette.hex10, undercurl = true })

	hl("ErrorMsg", { fg = palette.hex10 })
	hl("WarningMsg", { fg = palette.hex10 })
end

return M
