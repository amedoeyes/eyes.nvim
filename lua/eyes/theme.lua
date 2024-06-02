local M = {}

---@param name string
---@param values vim.api.keyset.highlight
local function hi(name, values)
	vim.api.nvim_set_hl(0, name, values)
end

M.setup = function()
	local options = require("eyes.config").options
	local toggle = options.toggle
	local extend = options.extend
	local palette = require("eyes.palettes").setup()

	--Linking--

	hi("Icon", { fg = palette.hex10 })
	hi("Border", { fg = palette.hex04 })
	hi("Button", { fg = palette.hex06, bg = palette.hex01 })
	hi("ButtonActive", { fg = palette.hex10, bg = palette.hex02 })

	--Editor--

	hi("CurSearch", { link = "Search" })
	hi("Cursor", { fg = palette.hex00, bg = palette.hex10 })
	hi("lCursor", { link = "Cursor" })
	hi("CursorColumn", { link = "CursorLine" })
	hi("CursorLine", { bg = palette.hex01 })
	hi("Directory", { fg = palette.hex10 })
	hi("DiffAdd", { fg = palette.hex06 })
	hi("DiffChange", { fg = palette.hex08 })
	hi("DiffDelete", { fg = palette.hex04 })
	hi("DiffText", { fg = palette.hex08 })
	hi("TermCursor", { link = "Cursor" })
	hi("WinSeparator", { link = "Border" })
	hi("Folded", { fg = palette.hex10 })
	hi("FoldColumn", { fg = palette.hex10 })
	hi("SignColumn", { link = "Icon" })
	hi("IncSearch", { link = "Search" })
	hi("Substitute", { link = "Search" })
	hi("LineNr", { fg = palette.hex04 })
	hi("CursorLineNr", { fg = palette.hex10 })
	hi("MatchParen", { fg = palette.hex10, bg = palette.hex02 })
	hi("Normal", { fg = palette.hex10, bg = palette.hex00 })
	hi("NormalFloat", { link = "Normal" })
	hi("FloatBorder", { link = "Border" })
	hi("FloatTitle", { link = "Title" })
	hi("PMenu", { link = "Normal" })
	hi("PMenuSel", { link = "CursorLine" })
	hi("PmenuSbar", { bg = palette.hex01 })
	hi("PmenuThumb", { bg = palette.hex08 })
	hi("Question", { fg = palette.hex10 })
	hi("QuickFixLine", { link = "CursorLine" })
	hi("Search", { fg = palette.hex10, bg = palette.hex03 })
	hi("StatusLine", { fg = palette.hex10, bg = palette.hex00, bold = true })
	hi("StatusLineNC", { fg = palette.hex10, bg = palette.hex00 })
	hi("TabLine", { fg = palette.hex06, bg = palette.hex00 })
	hi("TabLineFill", { fg = palette.hex10, bg = palette.hex00 })
	hi("TabLineSel", { fg = palette.hex10, bg = palette.hex00, bold = true, italic = true })
	hi("Title", { fg = palette.hex10, bold = true })
	hi("Visual", { bg = palette.hex02 })
	hi("WinBar", { fg = palette.hex10, bg = palette.hex00 })
	hi("WinBarNC", { fg = palette.hex10, bg = palette.hex00 })
	hi("ModeMsg", { fg = palette.hex10 })
	hi("MoreMsg", { fg = palette.hex10 })
	hi("MsgSeparator", { link = "Border" })

	--Spell

	if toggle.spell then
		hi("SpellBad", { sp = palette.hex10, undercurl = true })
		hi("SpellLocal", { sp = palette.hex10, undercurl = true })
		hi("SpellCap", { sp = palette.hex10, undercurl = true })
		hi("SpellRare", { sp = palette.hex10, undercurl = true })
	end

	--Diagnostics

	if toggle.diagnostics then
		hi("DiagnosticError", { fg = palette.hex10 })
		hi("DiagnosticWarn", { fg = palette.hex10 })
		hi("DiagnosticInfo", { fg = palette.hex10 })
		hi("DiagnosticHint", { fg = palette.hex10 })
		hi("DiagnosticOk", { fg = palette.hex10 })

		hi("DiagnosticUnderlineError", { sp = palette.hex10, undercurl = true })
		hi("DiagnosticUnderlineWarn", { sp = palette.hex10, undercurl = true })
		hi("DiagnosticUnderlineInfo", { sp = palette.hex10, undercurl = true })
		hi("DiagnosticUnderlineHint", { sp = palette.hex10, undercurl = true })
		hi("DiagnosticUnderlineOk", { sp = palette.hex10, undercurl = true })

		hi("ErrorMsg", { fg = palette.hex10 })
		hi("WarningMsg", { fg = palette.hex10 })
	end

	--Terminal

	if toggle.terminal then
		vim.g.terminal_color_0 = palette.hex00
		vim.g.terminal_color_8 = palette.hex03

		vim.g.terminal_color_1 = palette.hex06
		vim.g.terminal_color_9 = palette.hex06

		vim.g.terminal_color_2 = palette.hex11
		vim.g.terminal_color_10 = palette.hex11

		vim.g.terminal_color_3 = palette.hex09
		vim.g.terminal_color_11 = palette.hex09

		vim.g.terminal_color_4 = palette.hex04
		vim.g.terminal_color_12 = palette.hex04

		vim.g.terminal_color_5 = palette.hex07
		vim.g.terminal_color_13 = palette.hex07

		vim.g.terminal_color_6 = palette.hex08
		vim.g.terminal_color_14 = palette.hex08

		vim.g.terminal_color_7 = palette.hex12
		vim.g.terminal_color_15 = palette.hex12
	end

	--Syntax

	hi("SpecialKey", { fg = palette.hex04 })
	hi("NonText", { fg = palette.hex04 })
	hi("Comment", { fg = palette.hex04, italic = true })

	hi("Constant", { fg = palette.hex08 })
	hi("String", { link = "Constant" })

	hi("Identifier", { fg = palette.hex10 })
	hi("Function", { fg = palette.hex09 })

	hi("Statement", { fg = palette.hex06 })
	hi("Operator", { link = "Statement" })

	hi("PreProc", { fg = palette.hex08 })

	hi("Type", { fg = palette.hex07 })

	hi("Special", { fg = palette.hex06 })
	hi("Delimiter", { link = "Special" })
	hi("Tag", { fg = palette.hex08 })

	hi("Underlined", { fg = palette.hex10 })
	hi("Ignore", { fg = palette.hex04 })
	hi("Error", { fg = palette.hex15 })
	hi("Todo", { fg = palette.hex07 })

	hi("Conceal", { fg = palette.hex04 })

	hi("Added", { fg = palette.hex07 })
	hi("Changed", { fg = palette.hex05 })
	hi("Removed", { fg = palette.hex03 })

	--Plugins--

	--Codeium

	if toggle.plugins.codeium then
		hi("CodeiumSuggestion", { link = "Comment" })
	end

	--CMP

	if toggle.plugins.cmp then
		hi("CmpItemAbbr", { fg = palette.hex10 })
		hi("CmpItemAbbrDeprecated", { fg = palette.hex04, strikethrough = true })
		hi("CmpItemAbbrMatch", { fg = palette.hex10 })
		hi("CmpItemAbbrMatchFuzzy", { fg = palette.hex10 })
		hi("CmpItemKind", { fg = palette.hex10 })
		hi("CmpItemMenu", { fg = palette.hex10 })
	end

	--DAP

	if toggle.plugins.dap then
		hi("DapUIStop", { fg = palette.hex10 })
		hi("DapUIType", { fg = palette.hex10 })
		hi("DapUIScope", { fg = palette.hex10 })
		hi("DapUISource", { fg = palette.hex10 })
		hi("DapUIRestart", { fg = palette.hex10 })
		hi("DapUIPlayPause", { fg = palette.hex10 })
		hi("DapUIThread", { fg = palette.hex10 })
		hi("DapUIStoppedThread", { fg = palette.hex10 })
		hi("DapUIStepOut", { fg = palette.hex10 })
		hi("DapUIStepBack", { fg = palette.hex10 })
		hi("DapUIStepInto", { fg = palette.hex10 })
		hi("DapUIStepOver", { fg = palette.hex10 })
		hi("DapUIWinSelect", { fg = palette.hex10, bold = true })
		hi("DapUIDecoration", { fg = palette.hex10 })
		hi("DapUILineNumber", { fg = palette.hex10 })
		hi("DapUIFloatBorder", { link = "FloatBorder" })
		hi("DapUIWatchesEmpty", { fg = palette.hex10 })
		hi("DapUIWatchesError", { fg = palette.hex10 })
		hi("DapUIWatchesValue", { fg = palette.hex10 })
		hi("DapUIModifiedValue", { fg = palette.hex10, bold = true })
		hi("DapUIBreakpointsInfo", { fg = palette.hex10 })
		hi("DapUIBreakpointsPath", { fg = palette.hex10 })
		hi("DapUIBreakpointsCurrentLine", { fg = palette.hex10, bold = true })
		hi("DapUICurrentFrameName", { fg = palette.hex10, bold = true })
	end

	--DevIcons

	if toggle.plugins.devicons then
		local ok, devicons = pcall(require, "nvim-web-devicons")
		if ok then
			local icons = devicons.get_icons()
			for _, icon in pairs(icons) do
				icon.color = palette.hex10
			end
		end
	end

	--Flash

	if toggle.plugins.flash then
		hi("FlashLabel", { fg = palette.hex13, bg = palette.hex05 })
		hi("FlashCurrent", { fg = palette.hex10, bg = palette.hex04 })
	end

	--Illuminate

	if toggle.plugins.illuminate then
		hi("IlluminatedWordText", { fg = palette.hex10, bg = palette.hex02 })
		hi("IlluminatedWordRead", { fg = palette.hex10, bg = palette.hex02 })
		hi("IlluminatedWordWrite", { fg = palette.hex10, bg = palette.hex02 })
	end

	--IndentBlankline

	if toggle.plugins.indent_blankline then
		hi("iblIndent", { fg = palette.hex03 })
		hi("iblScope", { fg = palette.hex06 })
	end

	--Lazy

	if toggle.plugins.lazy then
		hi("LazyButton", { link = "Button" })
		hi("LazyButtonActive", { link = "ButtonActive" })
		hi("LazyH1", { link = "ButtonActive" })
		hi("LazyProp", { link = "Special" })
		hi("LazyDimmed", { link = "Comment" })
	end

	--Leap

	if toggle.plugins.leap then
		hi("LeapMatch", { link = "Search" })
		hi("LeapLabelPrimary", { fg = palette.hex13, bg = palette.hex05 })
		hi("LeapLabelSecondary", { fg = palette.hex12, bg = palette.hex02 })
		hi("LeapBackdrop", { link = "Comment" })
	end

	--LSP Config

	hi("LspInfoBorder", { link = "Border" })

	--Mason

	if toggle.plugins.mason then
		hi("MasonHeader", { link = "Title" })
		hi("MasonHeaderSecondary", { link = "Title" })
		hi("MasonHeading", { link = "Title" })

		hi("MasonMuted", { link = "Comment" })
		hi("MasonMutedBlock", { link = "Button" })
		hi("MasonMutedBlockBold", { link = "Button" })

		hi("MasonHighlight", { link = "Title" })
		hi("MasonHighlightBlock", { link = "ButtonActive" })
		hi("MasonHighlightBlockBold", { link = "ButtonActive" })

		hi("MasonHighlightSecondary", { link = "Title" })
		hi("MasonHighlightBlockSecondary", { link = "ButtonActive" })
		hi("MasonHighlightBlockBoldSecondary", { link = "ButtonActive" })
	end

	--MiniIndentscope

	if toggle.plugins.mini_indentscope then
		hi("MiniIndentscopeSymbol", { fg = palette.hex06 })
	end

	--NeoTree

	if toggle.plugins.neo_tree then
		hi("NeoTreeDimText", { fg = palette.hex05 })
		hi("NeoTreeDotfile", { fg = palette.hex05 })

		hi("NeoTreeFilterTerm", { fg = palette.hex10 })
		hi("NeoTreeTitleBar", { fg = palette.hex10, bg = palette.hex04 })

		hi("NeoTreeGitAdded", { link = "Icon" })
		hi("NeoTreeGitConflict", { link = "Icon" })
		hi("NeoTreeGitDeleted", { link = "Icon" })
		hi("NeoTreeGitIgnored", { link = "Icon" })
		hi("NeoTreeGitModified", { link = "Icon" })
		hi("NeoTreeGitUnstaged", { link = "Icon" })
		hi("NeoTreeGitUntracked", { link = "Icon" })
		hi("NeoTreeGitStaged", { link = "Icon" })

		hi("NeoTreeModified", { link = "Icon" })
	end

	--Noice

	if toggle.plugins.noice then
		hi("NoiceCmdlineIcon", { link = "Icon" })
		hi("NoiceCmdlineIconSearch", { link = "Icon" })
		hi("NoiceCmdlinePopupBorder", { link = "Border" })
		hi("NoiceCmdlinePopupBorderSearch", { fg = palette.hex10 })
		hi("NoiceCmdlinePopupTitle", { link = "Title" })

		hi("NoiceCompletionItemKindDefault", { link = "Icon" })
		hi("NoicePopupmenuMatch", { fg = palette.hex10 })
		hi("NoiceCompletionItemWord", { fg = palette.hex10 })

		hi("NoiceVirtualText", { link = "Comment" })

		hi("NoiceConfirmBorder", { link = "Border" })
		hi("NoiceFormatConfirm", { link = "Button" })
		hi("NoiceFormatConfirmDefault", { link = "ButtonActive" })

		hi("NoiceLspProgressClient", { link = "Title" })
		hi("NoiceLspProgressSpinner", { link = "Title" })
		hi("NoiceLspProgressTitle", { link = "Title" })

		hi("NoiceFormatProgressTodo", { bg = palette.hex02 })
		hi("NoiceFormatProgressDone", { bg = palette.hex06 })
	end

	--Notify

	if toggle.plugins.notify then
		hi("NotifyERRORBorder", { link = "Border" })
		hi("NotifyWARNBorder", { link = "Border" })
		hi("NotifyINFOBorder", { link = "Border" })
		hi("NotifyDEBUGBorder", { link = "Border" })
		hi("NotifyTRACEBorder", { link = "Border" })

		hi("NotifyERRORIcon", { link = "Icon" })
		hi("NotifyWARNIcon", { link = "Icon" })
		hi("NotifyINFOIcon", { link = "Icon" })
		hi("NotifyDEBUGIcon", { link = "Icon" })
		hi("NotifyTRACEIcon", { link = "Icon" })

		hi("NotifyERRORTitle", { link = "Title" })
		hi("NotifyWARNTitle", { link = "Title" })
		hi("NotifyINFOTitle", { link = "Title" })
		hi("NotifyDEBUGTitle", { link = "Title" })
		hi("NotifyTRACETitle", { link = "Title" })

		hi("NotifyERRORBody", { link = "NormalFloat" })
		hi("NotifyWARNBody", { link = "NormalFloat" })
		hi("NotifyINFOBody", { link = "NormalFloat" })
		hi("NotifyDEBUGBody", { link = "NormalFloat" })
		hi("NotifyTRACEBody", { link = "NormalFloat" })
	end

	--Null LS

	if toggle.plugins.null_ls then
		hi("NullLsInfoBorder", { link = "Border" })
	end

	--Telescope

	if toggle.plugins.telescope then
		hi("TelescopeTile", { link = "Title" })
		hi("TelescopeBorder", { link = "Border" })
		hi("TelescopeSelection", { link = "CursorColumn" })
		hi("TelescopePromptTitle", { link = "Title" })
		hi("TelpescopePromptBorder", { link = "Border" })
		hi("TelescopePreviewTitle", { link = "Title" })
		hi("TelescopeResultsTitle", { link = "Title" })
	end

	-- Treesitter

	if toggle.plugins.treesitter then
		hi("@constant.builtin", { link = "Constant" })
		hi("@function.builtin", { link = "Function" })
		hi("@constructor", { link = "Function" })

		hi("@tag.attribute", { link = "@attribute" })
		hi("@tag.delimiter", { link = "Delimiter" })

		hi("@text.title", { bold = true })
		hi("@text.strong", { bold = true })
		hi("@text.reference", { fg = palette.hex08 })
		hi("@text.uri", { fg = palette.hex09, underline = true })

		hi("@type.builtin", { link = "Type" })

		hi("@variable", { link = "Identifier" })
		hi("@variable.builtin", { link = "Identifier" })

		hi("@tag.builtin", { link = "Tag" })
	end

	--UndoTree

	if toggle.plugins.undotree then
		hi("UndotreeNode", { fg = palette.hex10 })
	end

	--Extend/overwrite Highlights

	if not vim.tbl_isempty(extend.highlights) then
		for k, v in pairs(extend.highlights) do
			v = vim.tbl_extend("force", vim.api.nvim_get_hl(0, { name = k }), v)
			hi(k, v)
		end
	end
end

--BufferLine

M.bufferline = {
	fill = { link = "TabLineFill" },
	background = { link = "TabLine" },

	tab = { link = "TabLine" },
	tab_selected = { link = "TabLineSel" },
	tab_separator = { link = "Border" },
	tab_separator_selected = { link = "Border" },
	tab_close = { link = "TabLine" },

	close_button = { link = "TabLine" },
	close_button_visible = { link = "TabLine" },
	close_button_selected = { link = "TabLineSel" },

	buffer_visible = { link = "TabLine" },
	buffer_selected = { link = "TabLineSel" },

	numbers = { link = "TabLine" },
	numbers_visible = { link = "TabLine" },
	numbers_selected = { link = "TabLineSel" },

	diagnostic = { link = "TabLine" },
	diagnostic_visible = { link = "TabLine" },
	diagnostic_selected = { link = "TabLineSel" },

	hint = { link = "TabLine" },
	hint_visible = { link = "TabLine" },
	hint_diagnostic = { link = "TabLine" },
	hint_diagnostic_visible = { link = "TabLine" },
	hint_diagnostic_selected = { link = "DiagnosticHint" },

	info = { link = "TabLine" },
	info_visible = { link = "TabLine" },
	info_diagnostic = { link = "TabLine" },
	info_diagnostic_visible = { link = "TabLine" },
	info_diagnostic_selected = { link = "DiagnosticInfo" },

	warning = { link = "TabLine" },
	warning_visible = { link = "TabLine" },
	warning_diagnostic = { link = "TabLine" },
	warning_diagnostic_visible = { link = "TabLine" },
	warning_diagnostic_selected = { link = "DiagnosticWarn" },

	error = { link = "TabLine" },
	error_visible = { link = "TabLine" },
	error_diagnostic = { link = "TabLine" },
	error_diagnostic_visible = { link = "TabLine" },
	error_diagnostic_selected = { link = "DiagnosticError" },

	modified = { link = "TabLine" },
	modified_visible = { link = "TabLine" },
	modified_selected = { link = "TabLineSel" },

	duplicate = { link = "TabLine" },
	duplicate_visible = { link = "TabLine" },
	duplicate_selected = { link = "TabLineSel" },

	separator = { link = "Border" },
	separator_visible = { link = "Border" },
	separator_selected = { link = "Border" },
	offset_separator = { link = "Border" },

	indicator_visible = { link = "TabLine" },
	indicator_selected = { link = "TabLineSel" },

	pick = { link = "TabLine" },
	pick_visible = { link = "TabLine" },
	pick_selected = { link = "TabLineSel" },

	trunc_marker = { link = "TabLine" },
}

return M
