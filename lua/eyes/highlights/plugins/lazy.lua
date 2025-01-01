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
	hl("LazySpecial", { link = "Special" })
	hl("LazyLocal", { link = "Constant" })

	hl("LazyProp", { fg = "fg" })
	hl("LazyValue", { fg = "fg" })
	hl("LazyUrl", { link = "@markup.link" })
	hl("LazyDir", { link = "@markup.link" })

	hl("LazyTaskError", { link = "ErrorMsg" })
	hl("LazyTaskOutput", { link = "MsgArea" })

	hl("LazyCommit", { link = "Special" })
	hl("LazyCommitIssue", { link = "Special" })
	hl("LazyCommitScope", { italic = true })
	hl("LazyCommitType", { bold = true })

	hl("LazyProgressDone", { fg = "fg" })
	hl("LazyProgressTodo", { link = "Border" })

	hl("LazyReasonCmd", { link = "Special" })
	hl("LazyReasonEvent", { link = "Special" })
	hl("LazyReasonFt", { link = "Special" })
	hl("LazyReasonImport", { link = "Special" })
	hl("LazyReasonInit", { link = "Special" })
	hl("LazyReasonKeys", { link = "Special" })
	hl("LazyReasonPlugin", { link = "Special" })
	hl("LazyReasonRequire", { link = "Special" })
	hl("LazyReasonRuntime", { link = "Special" })
	hl("LazyReasonSource", { link = "Special" })
	hl("LazyReasonStart", { link = "Special" })
end

return M
