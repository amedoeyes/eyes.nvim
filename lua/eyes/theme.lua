local colors = require("eyes.colors")
local config = require("eyes.config")

local M = {}

-- from https://github.com/RRethy/nvim-base16/blob/master/lua/base16-colorscheme.lua#L65-L80
M.highlight = setmetatable({}, {
	__newindex = function(_, hlgroup, args)
		if "string" == type(args) then
			vim.cmd(("hi! link %s %s"):format(hlgroup, args))
			return
		end

		local guifg = args.guifg or nil
		local guibg = args.guibg or nil
		local gui = args.gui or nil
		local guisp = args.guisp or nil
		local cmd = { "hi", hlgroup }

		if guifg then
			table.insert(cmd, "guifg=" .. guifg)
		end
		if guibg then
			table.insert(cmd, "guibg=" .. guibg)
		end
		if gui then
			table.insert(cmd, "gui=" .. gui)
		end
		if guisp then
			table.insert(cmd, "guisp=" .. guisp)
		end

		vim.cmd(table.concat(cmd, " "))
	end,
})

M.setup = function()
	local hi = M.highlight
	local options = config.options

	-- Editor

	hi.Normal = { guifg = colors.hexA0, guibg = colors.hex00, gui = nil, guisp = nil }
	hi.VertSplit = { guifg = colors.hex40, guibg = colors.hex00, gui = "none", guisp = nil }

	hi.NormalFloat = { guifg = colors.hexA0, guibg = colors.hex00, gui = nil, guisp = nil }
	hi.FloatBorder = { guifg = colors.hex40, guibg = colors.hex00, gui = nil, guisp = nil }

	hi.PMenu = { guifg = colors.hexA0, guibg = colors.hex00, gui = "none", guisp = nil }
	hi.PMenuSel = { guifg = colors.hexA0, guibg = colors.hex10, gui = nil, guisp = nil }
	hi.PmenuSbar = { guifg = nil, guibg = colors.hex10, gui = nil, guisp = nil }
	hi.PmenuThumb = { guifg = nil, guibg = colors.hex80, gui = nil, guisp = nil }

	hi.Title = { guifg = colors.hexA0, guibg = nil, gui = "none", guisp = nil }

	hi.Cursor = { guifg = colors.hex00, guibg = colors.hexA0, gui = nil, guisp = nil }
	hi.TermCursor = { guifg = colors.hex00, guibg = colors.hexA0, gui = "none", guisp = nil }

	hi.CursorColumn = { guifg = nil, guibg = colors.hex10, gui = "none", guisp = nil }
	hi.CursorLine = { guifg = nil, guibg = colors.hex10, gui = "none", guisp = nil }
	hi.QuickFixLine = { guifg = nil, guibg = colors.hex10, gui = "none", guisp = nil }

	hi.Visual = { guifg = nil, guibg = colors.hex20, gui = nil, guisp = nil }

	hi.LineNr = { guifg = colors.hex40, guibg = nil, gui = nil, guisp = nil }
	hi.CursorLineNr = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.SignColumn = { guifg = colors.hexA0, guibg = colors.hex00, gui = nil, guisp = nil }

	hi.Directory = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.MatchParen = { guifg = colors.hexA0, guibg = colors.hex40, gui = nil, guisp = nil }

	hi.Folded = { guifg = colors.hexA0, guibg = colors.hex10, gui = nil, guisp = nil }
	hi.FoldColumn = { guifg = colors.hexA0, guibg = colors.hex00, gui = nil, guisp = nil }

	hi.Search = { guifg = colors.hexA0, guibg = colors.hex40, gui = nil, guisp = nil }
	hi.IncSearch = { guifg = colors.hexA0, guibg = colors.hex40, gui = "none", guisp = nil }
	hi.Substitute = { guifg = colors.hexA0, guibg = colors.hex40, gui = "none", guisp = nil }

	hi.ModeMsg = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.MoreMsg = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.ErrorMsg = { guifg = colors.hexA0, guibg = colors.hex00, gui = nil, guisp = nil }
	hi.WarningMsg = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }

	hi.DiffAdd = { guifg = colors.hex70, guibg = colors.hex00, gui = nil, guisp = nil }
	hi.DiffChange = { guifg = colors.hex30, guibg = colors.hex00, gui = nil, guisp = nil }
	hi.DiffDelete = { guifg = colors.hex70, guibg = colors.hex00, gui = nil, guisp = nil }
	hi.DiffText = { guifg = colors.hex30, guibg = colors.hex00, gui = nil, guisp = nil }

	if options.spell then
		hi.SpellBad = { guifg = nil, guibg = nil, gui = "undercurl", guisp = colors.hexA0 }
		hi.SpellLocal = { guifg = nil, guibg = nil, gui = "undercurl", guisp = colors.hexA0 }
		hi.SpellCap = { guifg = nil, guibg = nil, gui = "undercurl", guisp = colors.hexA0 }
		hi.SpellRare = { guifg = nil, guibg = nil, gui = "undercurl", guisp = colors.hexA0 }
	end

	if options.diagnostics then
		hi.DiagnosticError = { guifg = colors.hexF0, guibg = nil, gui = "none", guisp = nil }
		hi.DiagnosticWarn = { guifg = colors.hexE0, guibg = nil, gui = "none", guisp = nil }
		hi.DiagnosticInfo = { guifg = colors.hexD0, guibg = nil, gui = "none", guisp = nil }
		hi.DiagnosticHint = { guifg = colors.hexC0, guibg = nil, gui = "none", guisp = nil }
		hi.DiagnosticUnderlineError = { guifg = nil, guibg = nil, gui = "undercurl", guisp = colors.hexF0 }
		hi.DiagnosticUnderlineWarn = { guifg = nil, guibg = nil, gui = "undercurl", guisp = colors.hexE0 }
		hi.DiagnosticUnderlineInfo = { guifg = nil, guibg = nil, gui = "undercurl", guisp = colors.hexD0 }
		hi.DiagnosticUnderlineHint = { guifg = nil, guibg = nil, gui = "undercurl", guisp = colors.hexC0 }
	end

	-- Terminal

	if options.terminal then
		vim.g.terminal_color_0 = colors.hex00
		vim.g.terminal_color_8 = colors.hex30

		vim.g.terminal_color_1 = colors.hex60
		vim.g.terminal_color_9 = colors.hex60

		vim.g.terminal_color_2 = colors.hexB0
		vim.g.terminal_color_10 = colors.hexB0

		vim.g.terminal_color_3 = colors.hex90
		vim.g.terminal_color_11 = colors.hex90

		vim.g.terminal_color_4 = colors.hex40
		vim.g.terminal_color_12 = colors.hex40

		vim.g.terminal_color_5 = colors.hex70
		vim.g.terminal_color_13 = colors.hex70

		vim.g.terminal_color_6 = colors.hex80
		vim.g.terminal_color_14 = colors.hex80

		vim.g.terminal_color_7 = colors.hexC0
		vim.g.terminal_color_15 = colors.hexF0
	end

	-- Syntax

	hi.SpecialKey = { guifg = colors.hex40, guibg = nil, gui = nil, guisp = nil }
	hi.NonText = { guifg = colors.hex40, guibg = nil, gui = nil, guisp = nil }
	hi.Comment = { guifg = colors.hex40, guibg = nil, gui = "italic", guisp = nil }
	hi.Conceal = { guifg = colors.hexD0, guibg = colors.hex00, gui = nil, guisp = nil }

	hi.Constant = { guifg = colors.hex80, guibg = nil, gui = nil, guisp = nil }

	hi.Identifier = { guifg = colors.hexA0, guibg = nil, gui = "none", guisp = nil }
	hi.Function = { guifg = colors.hex90, guibg = nil, gui = nil, guisp = nil }

	hi.Statement = { guifg = colors.hex70, guibg = nil, gui = "none", guisp = nil }

	hi.PreProc = { guifg = colors.hex70, guibg = nil, gui = nil, guisp = nil }

	hi.Type = { guifg = colors.hex80, guibg = nil, gui = "none", guisp = nil }

	hi.Special = { guifg = colors.hex60, guibg = nil, gui = nil, guisp = nil }
	hi.Tag = { guifg = colors.hex90, guibg = nil, gui = nil, guisp = nil }

	hi.Underlined = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.Ignore = { guifg = colors.hex40, guibg = nil, gui = nil, guisp = nil }
	hi.Error = { guifg = colors.hexF0, guibg = colors.hex00, gui = nil, guisp = nil }
	hi.Todo = { guifg = colors.hexA0, guibg = colors.hex30, gui = nil, guisp = nil }

	hi["@constant.builtin"] = "Constant"
	hi["@variable.builtin"] = { guifg = colors.hex70, guibg = nil, gui = "italic", guisp = nil }
	hi["@tag.attribute"] = "@attribute"
	hi["@tag.delimiter"] = "Delimiter"
	hi["@constructor"] = "Function"
	hi["@type.builtin"] = { guifg = colors.hex80, guibg = nil, gui = "italic", guisp = nil }
	hi["@type.qualifier"] = "@keyword"

	hi["@spell"] = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi["@text.title"] = { guifg = nil, guibg = nil, gui = "bold", guisp = nil }
	hi["@text.strong"] = { guifg = nil, guibg = nil, gui = "bold", guisp = nil }
	hi["@text.reference"] = { guifg = colors.hex80, guibg = nil, gui = nil, guisp = nil }
	hi["@text.uri"] = { guifg = colors.hex90, guibg = nil, gui = "underline", guisp = nil }

	hi["@lsp.type.class"] = "@function"
	hi["@lsp.type.comment"] = "Type"

	-- Plugins

	hi.CmpItemAbbr = { guifg = colors.hex90, guibg = nil, gui = nil, guisp = nil }
	hi.CmpItemAbbrDeprecated = { guifg = colors.hex40, guibg = nil, gui = "strikethrough", guisp = nil }
	hi.CmpItemAbbrMatch = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.CmpItemAbbrMatchFuzzy = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.CmpItemKind = { guifg = colors.hex90, guibg = nil, gui = nil, guisp = nil }
	hi.CmpItemMenu = { guifg = colors.hex20, guibg = nil, gui = nil, guisp = nil }

	hi.NeoTreeTitleBar = { guifg = colors.hexA0, guibg = colors.hex40, gui = nil, guisp = nil }
	hi.NeoTreeGitAdded = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.NeoTreeGitConflict = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.NeoTreeGitDeleted = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.NeoTreeGitIgnored = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.NeoTreeGitModified = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.NeoTreeGitUnstaged = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.NeoTreeGitUntracked = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.NeoTreeGitStaged = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }

	hi.NeoTreeModified = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }

	hi.MasonHeader = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.MasonHeaderSecondary = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.MasonMuted = { guifg = colors.hex40, guibg = nil, gui = nil, guisp = nil }
	hi.MasonMutedBlock = { guifg = colors.hex90, guibg = colors.hex20, gui = nil, guisp = nil }
	hi.MasonMutedBlockBold = { guifg = colors.hex90, guibg = colors.hex20, gui = nil, guisp = nil }
	hi.MasonHighlight = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.MasonHighlightBlock = { guifg = colors.hex00, guibg = colors.hexA0, gui = nil, guisp = nil }
	hi.MasonHighlightBlockBold = { guifg = colors.hex00, guibg = colors.hexA0, gui = nil, guisp = nil }
	hi.MasonHighlightSecondary = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.MasonHighlightBlockSecondary = { guifg = colors.hex00, guibg = colors.hexA0, gui = nil, guisp = nil }
	hi.MasonHighlightBlockBoldSecondary = { guifg = colors.hex00, guibg = colors.hexA0, gui = nil, guisp = nil }
	hi.MasonError = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.MasonWarning = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.MasonHeading = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }

	hi.TelescopeBorder = "FloatBorder"
	hi.TelescopePromptBorder = "FloatBorder"
	hi.TelescopePreviewTitle = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.TelescopePromptTitle = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.TelescopeResultsTitle = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.TelescopeSelection = { guifg = nil, guibg = colors.hex10, gui = nil, guisp = nil }

	hi.NotifyERRORBorder = "FloatBorder"
	hi.NotifyWARNBorder = "FloatBorder"
	hi.NotifyINFOBorder = "FloatBorder"
	hi.NotifyDEBUGBorder = "FloatBorder"
	hi.NotifyTRACEBorder = "FloatBorder"
	hi.NotifyERRORIcon = { guifg = colors.hexA0, guibg = nil, gui = "none", guisp = nil }
	hi.NotifyWARNIcon = { guifg = colors.hexA0, guibg = nil, gui = "none", guisp = nil }
	hi.NotifyINFOIcon = { guifg = colors.hexA0, guibg = nil, gui = "none", guisp = nil }
	hi.NotifyDEBUGIcon = { guifg = colors.hexA0, guibg = nil, gui = "none", guisp = nil }
	hi.NotifyTRACEIcon = { guifg = colors.hexA0, guibg = nil, gui = "none", guisp = nil }
	hi.NotifyERRORTitle = { guifg = colors.hexA0, guibg = nil, gui = "none", guisp = nil }
	hi.NotifyWARNTitle = { guifg = colors.hexA0, guibg = nil, gui = "none", guisp = nil }
	hi.NotifyINFOTitle = { guifg = colors.hexA0, guibg = nil, gui = "none", guisp = nil }
	hi.NotifyDEBUGTitle = { guifg = colors.hexA0, guibg = nil, gui = "none", guisp = nil }
	hi.NotifyTRACETitle = { guifg = colors.hexA0, guibg = nil, gui = "none", guisp = nil }
	hi.NotifyERRORBody = "Normal"
	hi.NotifyWARNBody = "Normal"
	hi.NotifyINFOBody = "Normal"
	hi.NotifyDEBUGBody = "Normal"
	hi.NotifyTRACEBody = "Normal"

	hi.LeapMatch = { guifg = colors.hex00, guibg = colors.hexA0, gui = nil, guisp = nil }
	hi.LeapLabelPrimary = { guifg = colors.hex00, guibg = colors.hexA0, gui = nil, guisp = nil }
	hi.LeapLabelSecondary = { guifg = colors.hex00, guibg = colors.hex70, gui = nil, guisp = nil }
	hi.LeapBackdrop = { guifg = colors.hex40, guibg = nil, gui = nil, guisp = nil }

	hi.NoiceCmdlineIcon = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.NoiceCmdlineIconSearch = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.NoiceCmdlinePopupBorder = "FloatBorder"
	hi.NoiceCmdlinePopupBorderSearch = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.NoiceCmdlinePopupTitle = { guifg = colors.hexA0, guibg = nil, gui = nil, guisp = nil }
	hi.NoiceConfirmBorder = "FloataBorder"
	hi.NoiceFormatLevelError = { guifg = colors.hex40, guibg = nil, gui = nil, guisp = nil }
	hi.NoiceFormatLevelInfo = { guifg = colors.hex40, guibg = nil, gui = nil, guisp = nil }
	hi.NoiceFormatLevelWarn = { guifg = colors.hex40, guibg = nil, gui = nil, guisp = nil }
	hi.NoiceVirtualText = { guifg = colors.hex40, guibg = nil, gui = nil, guisp = nil }

	hi.IlluminatedWordText = { guifg = nil, guibg = nil, gui = "underline", guisp = colors.hexA0 }
	hi.IlluminatedWordRead = { guifg = nil, guibg = nil, gui = "underline", guisp = colors.hexA0 }
	hi.IlluminatedWordWrite = { guifg = nil, guibg = nil, gui = "underline", guisp = colors.hexA0 }

	hi.IndentBlanklineChar = { guifg = colors.hex20, gui = "nocombine" }
	hi.IndentBlanklineContextChar = { guifg = colors.hex40, gui = "nocombine" }
end

return M
