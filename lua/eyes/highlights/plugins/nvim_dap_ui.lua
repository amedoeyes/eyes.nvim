local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("DapUINormal", { link = "Normal" })
	hl("DapUINormalNC", { link = "Normal" })

	hl("DapUIBreakpointsCurrentLine", { fg = "fg" })
	hl("DapUIBreakpointsDisabledLine", "Dim")
	hl("DapUIBreakpointsInfo", "Mute")
	hl("DapUIBreakpointsLine", "Mute")
	hl("DapUIBreakpointsPath", "Bold")

	hl("DapUICurrentFrameName", "Bold")
	hl("DapUIFrameName", { fg = "fg" })
	hl("DapUILineNumber", "Mute")
	hl("DapUISource", { fg = "fg" })

	hl("DapUIEndofBuffer", "EndOfBuffer")
	hl("DapUIFloatBorder", "FloatBorder")
	hl("DapUIFloatNormal", "NormalFloat")

	hl("DapUIWinSelect", { fg = "fg" })

	hl("DapUIStoppedThread", "Mute")
	hl("DapUIThread", { fg = "fg" })

	hl("DapUIScope", "Bold")
	hl("DapUIVariable", "@variable")
	hl("DapUIType", "@type")
	hl("DapUIValue", { fg = "fg" })
	hl("DapUIModifiedValue", "Bold")
	hl("DapUIDecoration", "Icon")

	hl("DapUIWatchesEmpty", "Dim")
	hl("DapUIWatchesError", { fg = "fg" })
	hl("DapUIWatchesValue", { fg = "fg" })

	hl("DapUIPlayPause", "Icon")
	hl("DapUIPlayPauseNC", "Icon")
	hl("DapUIRestart", "Icon")
	hl("DapUIRestartNC", "Icon")
	hl("DapUIStepBack", "Icon")
	hl("DapUIStepBackNC", "Icon")
	hl("DapUIStepInto", "Icon")
	hl("DapUIStepIntoNC", "Icon")
	hl("DapUIStepOut", "Icon")
	hl("DapUIStepOutNC", "Icon")
	hl("DapUIStepOver", "Icon")
	hl("DapUIStepOverNC", "Icon")
	hl("DapUIStop", "Icon")
	hl("DapUIStopNC", "Icon")
	hl("DapUIUnavailable", "Dim")
	hl("DapUIUnavailableNC", "Dim")
end

return M
