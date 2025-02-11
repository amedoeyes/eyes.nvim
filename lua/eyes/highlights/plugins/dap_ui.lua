local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette")

M.setup = function()
	hl("DapUIStop", { fg = palette.hex10 })
	hl("DapUIType", { fg = palette.hex10 })
	hl("DapUIScope", { fg = palette.hex10 })
	hl("DapUISource", { fg = palette.hex10 })
	hl("DapUIRestart", { fg = palette.hex10 })
	hl("DapUIPlayPause", { fg = palette.hex10 })
	hl("DapUIThread", { fg = palette.hex10 })
	hl("DapUIStoppedThread", { fg = palette.hex10 })
	hl("DapUIStepOut", { fg = palette.hex10 })
	hl("DapUIStepBack", { fg = palette.hex10 })
	hl("DapUIStepInto", { fg = palette.hex10 })
	hl("DapUIStepOver", { fg = palette.hex10 })
	hl("DapUIWinSelect", { fg = palette.hex10, bold = true })
	hl("DapUIDecoration", { fg = palette.hex10 })
	hl("DapUILineNumber", { fg = palette.hex10 })
	hl("DapUIFloatBorder", { link = "FloatBorder" })
	hl("DapUIWatchesEmpty", { fg = palette.hex10 })
	hl("DapUIWatchesError", { fg = palette.hex10 })
	hl("DapUIWatchesValue", { fg = palette.hex10 })
	hl("DapUIModifiedValue", { fg = palette.hex10, bold = true })
	hl("DapUIBreakpointsInfo", { fg = palette.hex10 })
	hl("DapUIBreakpointsPath", { fg = palette.hex10 })
	hl("DapUIBreakpointsCurrentLine", { fg = palette.hex10, bold = true })
	hl("DapUICurrentFrameName", { fg = palette.hex10, bold = true })
end

return M
