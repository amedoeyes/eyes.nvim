local colors = require("colors")

local M = {}

M.colors = colors

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

local hi = M.highlight

-- Editor

hi.Normal = { guifg = M.colors.base0A, guibg = M.colors.base00, gui = nil, guisp = nil }
hi.VertSplit = { guifg = M.colors.base04, guibg = M.colors.base00, gui = "none", guisp = nil }

hi.NormalFloat = { guifg = M.colors.base0A, guibg = M.colors.base00, gui = nil, guisp = nil }
hi.FloatBorder = { guifg = M.colors.base04, guibg = M.colors.base00, gui = nil, guisp = nil }

hi.PMenu = { guifg = M.colors.base0A, guibg = M.colors.base00, gui = "none", guisp = nil }
hi.PMenuSel = { guifg = M.colors.base0A, guibg = M.colors.base01, gui = nil, guisp = nil }
hi.PmenuSbar = { guifg = nil, guibg = M.colors.base01, gui = nil, guisp = nil }
hi.PmenuThumb = { guifg = nil, guibg = M.colors.base08, gui = nil, guisp = nil }

hi.Title = { guifg = M.colors.base0A, guibg = nil, gui = "none", guisp = nil }

hi.Cursor = { guifg = M.colors.base00, guibg = M.colors.base0A, gui = nil, guisp = nil }
hi.TermCursor = { guifg = M.colors.base00, guibg = M.colors.base0A, gui = "none", guisp = nil }

hi.CursorColumn = { guifg = nil, guibg = M.colors.base01, gui = "none", guisp = nil }
hi.CursorLine = { guifg = nil, guibg = M.colors.base01, gui = "none", guisp = nil }
hi.QuickFixLine = { guifg = nil, guibg = M.colors.base01, gui = "none", guisp = nil }

hi.Visual = { guifg = nil, guibg = M.colors.base02, gui = nil, guisp = nil }

hi.LineNr = { guifg = M.colors.base04, guibg = nil, gui = nil, guisp = nil }
hi.CursorLineNr = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.SignColumn = { guifg = M.colors.base0A, guibg = M.colors.base00, gui = nil, guisp = nil }

hi.Directory = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.MatchParen = { guifg = M.colors.base0A, guibg = M.colors.base04, gui = nil, guisp = nil }

hi.Folded = { guifg = M.colors.base0A, guibg = M.colors.base01, gui = nil, guisp = nil }
hi.FoldColumn = { guifg = M.colors.base0A, guibg = M.colors.base00, gui = nil, guisp = nil }

hi.Search = { guifg = M.colors.base0A, guibg = M.colors.base04, gui = nil, guisp = nil }
hi.IncSearch = { guifg = M.colors.base0A, guibg = M.colors.base04, gui = "none", guisp = nil }
hi.Substitute = { guifg = M.colors.base0A, guibg = M.colors.base04, gui = "none", guisp = nil }

hi.ModeMsg = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.MoreMsg = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.ErrorMsg = { guifg = M.colors.base0A, guibg = M.colors.base00, gui = nil, guisp = nil }
hi.WarningMsg = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }

hi.DiffAdd = { guifg = M.colors.base07, guibg = M.colors.base00, gui = nil, guisp = nil }
hi.DiffChange = { guifg = M.colors.base03, guibg = M.colors.base00, gui = nil, guisp = nil }
hi.DiffDelete = { guifg = M.colors.base07, guibg = M.colors.base00, gui = nil, guisp = nil }
hi.DiffText = { guifg = M.colors.base03, guibg = M.colors.base00, gui = nil, guisp = nil }

hi.SpellBad = { guifg = nil, guibg = nil, gui = "undercurl", guisp = M.colors.base0A }
hi.SpellLocal = { guifg = nil, guibg = nil, gui = "undercurl", guisp = M.colors.base0A }
hi.SpellCap = { guifg = nil, guibg = nil, gui = "undercurl", guisp = M.colors.base0A }
hi.SpellRare = { guifg = nil, guibg = nil, gui = "undercurl", guisp = M.colors.base0A }

hi.DiagnosticError = { guifg = M.colors.base0F, guibg = nil, gui = "none", guisp = nil }
hi.DiagnosticWarn = { guifg = M.colors.base0F, guibg = nil, gui = "none", guisp = nil }
hi.DiagnosticInfo = { guifg = M.colors.base0F, guibg = nil, gui = "none", guisp = nil }
hi.DiagnosticHint = { guifg = M.colors.base0F, guibg = nil, gui = "none", guisp = nil }
hi.DiagnosticUnderlineError = { guifg = nil, guibg = nil, gui = "undercurl", guisp = M.colors.base0F }
hi.DiagnosticUnderlineWarn = { guifg = nil, guibg = nil, gui = "undercurl", guisp = M.colors.base0F }
hi.DiagnosticUnderlineInfo = { guifg = nil, guibg = nil, gui = "undercurl", guisp = M.colors.base0F }
hi.DiagnosticUnderlineHint = { guifg = nil, guibg = nil, gui = "undercurl", guisp = M.colors.base0F }

-- Syntax

hi.SpecialKey = { guifg = M.colors.base04, guibg = nil, gui = nil, guisp = nil }
hi.NonText = { guifg = M.colors.base04, guibg = nil, gui = nil, guisp = nil }
hi.Comment = { guifg = M.colors.base04, guibg = nil, gui = "italic", guisp = nil }
hi.Conceal = { guifg = M.colors.base0D, guibg = M.colors.base00, gui = nil, guisp = nil }

hi.Constant = { guifg = M.colors.base08, guibg = nil, gui = nil, guisp = nil }

hi.Identifier = { guifg = M.colors.base0A, guibg = nil, gui = "none", guisp = nil }
hi.Function = { guifg = M.colors.base09, guibg = nil, gui = nil, guisp = nil }

hi.Statement = { guifg = M.colors.base07, guibg = nil, gui = "none", guisp = nil }

hi.PreProc = { guifg = M.colors.base07, guibg = nil, gui = nil, guisp = nil }

hi.Type = { guifg = M.colors.base08, guibg = nil, gui = "none", guisp = nil }

hi.Special = { guifg = M.colors.base06, guibg = nil, gui = nil, guisp = nil }
hi.Tag = { guifg = M.colors.base09, guibg = nil, gui = nil, guisp = nil }

hi.Underlined = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.Ignore = { guifg = M.colors.base04, guibg = nil, gui = nil, guisp = nil }
hi.Error = { guifg = M.colors.base0F, guibg = M.colors.base00, gui = nil, guisp = nil }
hi.Todo = { guifg = M.colors.base0A, guibg = M.colors.base00, gui = nil, guisp = nil }

hi["@constant.builtin"] = "Constant"
hi["@variable.builtin"] = { guifg = M.colors.base07, guibg = nil, gui = "italic", guisp = nil }
hi["@tag.attribute"] = "@attribute"
hi["@tag.delimiter"] = "Delimiter"
hi["@constructor"] = "Function"
hi["@type.builtin"] = { guifg = M.colors.base08, guibg = nil, gui = "italic", guisp = nil }
hi["@type.qualifier"] = "@keyword"

hi["@lsp.type.class"] = "@function"

-- Plugins

hi.CmpItemAbbr = { guifg = M.colors.base09, guibg = nil, gui = nil, guisp = nil }
hi.CmpItemAbbrDeprecated = { guifg = M.colors.base04, guibg = nil, gui = "strikethrough", guisp = nil }
hi.CmpItemAbbrMatch = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.CmpItemAbbrMatchFuzzy = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.CmpItemKind = { guifg = M.colors.base09, guibg = nil, gui = nil, guisp = nil }
hi.CmpItemMenu = { guifg = M.colors.base02, guibg = nil, gui = nil, guisp = nil }

hi.NeoTreeTitleBar = { guifg = M.colors.base0A, guibg = M.colors.base04, gui = nil, guisp = nil }
hi.NeoTreeGitAdded = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.NeoTreeGitConflict = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.NeoTreeGitDeleted = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.NeoTreeGitIgnored = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.NeoTreeGitModified = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.NeoTreeGitUnstaged = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.NeoTreeGitUntracked = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.NeoTreeGitStaged = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }

hi.NeoTreeModified = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }

hi.MasonHeader = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.MasonHeaderSecondary = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.MasonMuted = { guifg = M.colors.base04, guibg = nil, gui = nil, guisp = nil }
hi.MasonMutedBlock = { guifg = M.colors.base09, guibg = M.colors.base02, gui = nil, guisp = nil }
hi.MasonMutedBlockBold = { guifg = M.colors.base09, guibg = M.colors.base02, gui = nil, guisp = nil }
hi.MasonHighlight = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.MasonHighlightBlock = { guifg = M.colors.base00, guibg = M.colors.base0A, gui = nil, guisp = nil }
hi.MasonHighlightBlockBold = { guifg = M.colors.base00, guibg = M.colors.base0A, gui = nil, guisp = nil }
hi.MasonHighlightSecondary = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.MasonHighlightBlockSecondary = { guifg = M.colors.base00, guibg = M.colors.base0A, gui = nil, guisp = nil }
hi.MasonHighlightBlockBoldSecondary = { guifg = M.colors.base00, guibg = M.colors.base0A, gui = nil, guisp = nil }
hi.MasonError = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.MasonWarning = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.MasonHeading = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }

hi.TelescopeBorder = "FloatBorder"
hi.TelescopePromptBorder = "FloatBorder"
hi.TelescopePreviewTitle = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.TelescopePromptTitle = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.TelescopeResultsTitle = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.TelescopeSelection = { guifg = nil, guibg = M.colors.base01, gui = nil, guisp = nil }

hi.NotifyERRORBorder = "FloatBorder"
hi.NotifyWARNBorder = "FloatBorder"
hi.NotifyINFOBorder = "FloatBorder"
hi.NotifyDEBUGBorder = "FloatBorder"
hi.NotifyTRACEBorder = "FloatBorder"
hi.NotifyERRORIcon = { guifg = M.colors.base0A, guibg = nil, gui = "none", guisp = nil }
hi.NotifyWARNIcon = { guifg = M.colors.base0A, guibg = nil, gui = "none", guisp = nil }
hi.NotifyINFOIcon = { guifg = M.colors.base0A, guibg = nil, gui = "none", guisp = nil }
hi.NotifyDEBUGIcon = { guifg = M.colors.base0A, guibg = nil, gui = "none", guisp = nil }
hi.NotifyTRACEIcon = { guifg = M.colors.base0A, guibg = nil, gui = "none", guisp = nil }
hi.NotifyERRORTitle = { guifg = M.colors.base0A, guibg = nil, gui = "none", guisp = nil }
hi.NotifyWARNTitle = { guifg = M.colors.base0A, guibg = nil, gui = "none", guisp = nil }
hi.NotifyINFOTitle = { guifg = M.colors.base0A, guibg = nil, gui = "none", guisp = nil }
hi.NotifyDEBUGTitle = { guifg = M.colors.base0A, guibg = nil, gui = "none", guisp = nil }
hi.NotifyTRACETitle = { guifg = M.colors.base0A, guibg = nil, gui = "none", guisp = nil }
hi.NotifyERRORBody = "Normal"
hi.NotifyWARNBody = "Normal"
hi.NotifyINFOBody = "Normal"
hi.NotifyDEBUGBody = "Normal"
hi.NotifyTRACEBody = "Normal"

hi.LeapMatch = { guifg = M.colors.base00, guibg = M.colors.base0A, gui = nil, guisp = nil }
hi.LeapLabelPrimary = { guifg = M.colors.base00, guibg = M.colors.base0A, gui = nil, guisp = nil }
hi.LeapLabelSecondary = { guifg = M.colors.base00, guibg = M.colors.base07, gui = nil, guisp = nil }
hi.LeapBackdrop = { guifg = M.colors.base04, guibg = nil, gui = nil, guisp = nil }

hi.NoiceCmdlineIcon = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.NoiceCmdlineIconSearch = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.NoiceCmdlinePopupBorder = "FloatBorder"
hi.NoiceCmdlinePopupBorderSearch = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.NoiceCmdlinePopupTitle = { guifg = M.colors.base0A, guibg = nil, gui = nil, guisp = nil }
hi.NoiceConfirmBorder = "FloataBorder"
hi.NoiceFormatLevelError = { guifg = M.colors.base04, guibg = nil, gui = nil, guisp = nil }
hi.NoiceFormatLevelInfo = { guifg = M.colors.base04, guibg = nil, gui = nil, guisp = nil }
hi.NoiceFormatLevelWarn = { guifg = M.colors.base04, guibg = nil, gui = nil, guisp = nil }
hi.NoiceVirtualText = { guifg = M.colors.base04, guibg = nil, gui = nil, guisp = nil }

hi.IlluminatedWordText = { guifg = M.colors.base0A, guibg = M.colors.base04, gui = nil, guisp = nil }
hi.IlluminatedWordRead = { guifg = M.colors.base0A, guibg = M.colors.base04, gui = nil, guisp = nil }
hi.IlluminatedWordWrite = { guifg = M.colors.base0A, guibg = M.colors.base04, gui = nil, guisp = nil }

hi.IndentBlanklineChar = { guifg = M.colors.base02, gui = "nocombine" }
hi.IndentBlanklineContextChar = { guifg = M.colors.base04, gui = "nocombine" }

return M
