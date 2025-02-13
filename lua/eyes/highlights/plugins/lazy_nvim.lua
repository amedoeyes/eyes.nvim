local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("LazyNormal", "NormalFloat")

	hl("LazyProp", "Mute")
	hl("LazyBackdrop", { bg = "black" })

	hl("LazyButton", "Mute")
	hl("LazyButtonActive", "Title")

	hl("LazyH1", "Title")
	hl("LazyH2", "Title")

	hl("LazyCommit", "Mute")
	hl("LazyCommitIssue", "Mute")
	hl("LazyCommitScope", "Italic")
	hl("LazyCommitType", "Bold")

	hl("LazyProgressDone", { fg = "fg" })
	hl("LazyProgressTodo", "Border")

	hl("LazyReasonCmd", "Mute")
	hl("LazyReasonEvent", "Mute")
	hl("LazyReasonFt", "Mute")
	hl("LazyReasonImport", "Mute")
	hl("LazyReasonKeys", "Mute")
	hl("LazyReasonPlugin", "Mute")
	hl("LazyReasonRequire", "Mute")
	hl("LazyReasonRuntime", "Mute")
	hl("LazyReasonSource", "Mute")
	hl("LazyReasonStart", "Mute")

	hl("LazyNoCond", "DiagnosticWarn")
	hl("LazyLocal", { fg = "fg" })
	hl("LazyTaskOutput", { fg = "fg" })

	hl("LazyBold", "Bold")
	hl("LazyComment", "Comment")
	hl("LazyDimmed", "Dim")
	hl("LazyDir", "Directory")
	hl("LazyItalic", "Italic")
	hl("LazySpecial", "Special")
	hl("LazyUrl", "@markup.link")
	hl("LazyValue", { fg = "fg" })

	hl("LazyError", "DiagnosticError")
	hl("LazyInfo", "DiagnosticInfo")
	hl("LazyWarning", "DiagnosticWarn")
end

return M
