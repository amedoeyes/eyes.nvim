local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("DiagnosticError", { fg = "fg" })
	hl("DiagnosticWarn", { fg = "fg" })
	hl("DiagnosticInfo", { fg = "fg" })
	hl("DiagnosticHint", { fg = "fg" })
	hl("DiagnosticOk", { fg = "fg" })
	hl("DiagnosticDeprecated", "Deprecated")
	hl("DiagnosticUnnecessary", "Dim")

	hl("DiagnosticVirtualTextError", "DiagnosticError")
	hl("DiagnosticVirtualTextWarn", "DiagnosticWarn")
	hl("DiagnosticVirtualTextInfo", "DiagnosticInfo")
	hl("DiagnosticVirtualTextHint", "DiagnosticHint")
	hl("DiagnosticVirtualTextOk", "DiagnosticOk")

	hl("DiagnosticVirtualLinesOk", "DiagnosticError")
	hl("DiagnosticVirtualLinesHint", "DiagnosticWarn")
	hl("DiagnosticVirtualLinesInfo", "DiagnosticInfo")
	hl("DiagnosticVirtualLinesWarn", "DiagnosticHint")
	hl("DiagnosticVirtualLinesError", "DiagnosticOk")

	hl("DiagnosticUnderlineError", { sp = "fg", undercurl = true })
	hl("DiagnosticUnderlineWarn", { sp = "fg", undercurl = true })
	hl("DiagnosticUnderlineInfo", { sp = "fg", undercurl = true })
	hl("DiagnosticUnderlineHint", { sp = "fg", undercurl = true })
	hl("DiagnosticUnderlineOk", { sp = "fg", undercurl = true })

	hl("DiagnosticFloatingError", "NormalFloat")
	hl("DiagnosticFloatingWarn", "NormalFloat")
	hl("DiagnosticFloatingInfo", "NormalFloat")
	hl("DiagnosticFloatingHint", "NormalFloat")
	hl("DiagnosticFloatingOk", "NormalFloat")

	hl("DiagnosticSignError", "Icon")
	hl("DiagnosticSignWarn", "Icon")
	hl("DiagnosticSignInfo", "Icon")
	hl("DiagnosticSignHint", "Icon")
	hl("DiagnosticSignOk", "Icon")
end

return M
