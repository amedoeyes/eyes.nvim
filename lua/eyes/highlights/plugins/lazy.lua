local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("LazyButton", "Button")
	hl("LazyButtonActive", "ButtonActive")
	hl("LazyH1", "ButtonActive")
	hl("LazyH2", "Title")
	hl("LazyComment", "Comment")
	hl("LazyDimmed", "Dim")
	hl("LazyNoCond", "DiagnosticWarn")
	hl("LazyNormal", "NormalFloat")
	hl("LazyMute", "Special")
	hl("LazyLocal", "Constant")

	hl("LazyProp", { fg = "fg" })
	hl("LazyValue", { fg = "fg" })
	hl("LazyUrl", "@markup.link")
	hl("LazyDir", "@markup.link")

	hl("LazyTaskError", "ErrorMsg")
	hl("LazyTaskOutput", "MsgArea")

	hl("LazyCommit", "Mute")
	hl("LazyCommitIssue", "Mute")
	hl("LazyCommitScope", { italic = true })
	hl("LazyCommitType", { bold = true })

	hl("LazyProgressDone", { fg = "fg" })
	hl("LazyProgressTodo", "Border")

	hl("LazyReasonCmd", "Mute")
	hl("LazyReasonEvent", "Mute")
	hl("LazyReasonFt", "Mute")
	hl("LazyReasonImport", "Mute")
	hl("LazyReasonInit", "Mute")
	hl("LazyReasonKeys", "Mute")
	hl("LazyReasonPlugin", "Mute")
	hl("LazyReasonRequire", "Mute")
	hl("LazyReasonRuntime", "Mute")
	hl("LazyReasonSource", "Mute")
	hl("LazyReasonStart", "Mute")
end

return M
