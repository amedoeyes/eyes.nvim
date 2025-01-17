local M = {}

local hl = require("eyes.utility").hl

M.setup = function()
	hl("LazyButton", { link = "Button" })
	hl("LazyButtonActive", { link = "ButtonActive" })
	hl("LazyH1", { link = "ButtonActive" })
	hl("LazyH2", { link = "Title" })
	hl("LazyComment", { link = "Comment" })
	hl("LazyDimmed", { link = "NonText" })
	hl("LazyNoCond", { link = "DiagnosticWarn" })
	hl("LazyNormal", { link = "NormalFloat" })
	hl("LazyMute", { link = "Special" })
	hl("LazyLocal", { link = "Constant" })

	hl("LazyProp", { fg = "fg" })
	hl("LazyValue", { fg = "fg" })
	hl("LazyUrl", { link = "@markup.link" })
	hl("LazyDir", { link = "@markup.link" })

	hl("LazyTaskError", { link = "ErrorMsg" })
	hl("LazyTaskOutput", { link = "MsgArea" })

	hl("LazyCommit", { link = "Mute" })
	hl("LazyCommitIssue", { link = "Mute" })
	hl("LazyCommitScope", { italic = true })
	hl("LazyCommitType", { bold = true })

	hl("LazyProgressDone", { fg = "fg" })
	hl("LazyProgressTodo", { link = "Border" })

	hl("LazyReasonCmd", { link = "Mute" })
	hl("LazyReasonEvent", { link = "Mute" })
	hl("LazyReasonFt", { link = "Mute" })
	hl("LazyReasonImport", { link = "Mute" })
	hl("LazyReasonInit", { link = "Mute" })
	hl("LazyReasonKeys", { link = "Mute" })
	hl("LazyReasonPlugin", { link = "Mute" })
	hl("LazyReasonRequire", { link = "Mute" })
	hl("LazyReasonRuntime", { link = "Mute" })
	hl("LazyReasonSource", { link = "Mute" })
	hl("LazyReasonStart", { link = "Mute" })
end

return M
