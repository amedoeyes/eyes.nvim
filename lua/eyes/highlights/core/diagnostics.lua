local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("DiagnosticError", { fg = "fg" })
	hl("DiagnosticWarn", { fg = "fg" })
	hl("DiagnosticInfo", { fg = "fg" })
	hl("DiagnosticHint", { fg = "fg" })
	hl("DiagnosticOk", { fg = "fg" })

	hl("DiagnosticUnderlineError", { sp = "fg", undercurl = true })
	hl("DiagnosticUnderlineWarn", { sp = "fg", undercurl = true })
	hl("DiagnosticUnderlineInfo", { sp = "fg", undercurl = true })
	hl("DiagnosticUnderlineHint", { sp = "fg", undercurl = true })
	hl("DiagnosticUnderlineOk", { sp = "fg", undercurl = true })
end

return M
