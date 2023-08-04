local M = {}

---@class Highlight
---@field fg? string
---@field bg? string
---@field sp? string
---@field blend? number
---@field bold? boolean
---@field standout? boolean
---@field underline? boolean
---@field undercurl? boolean
---@field underdouble? boolean
---@field underdotted? boolean
---@field underdashed? boolean
---@field strikethrough? boolean
---@field italic? boolean
---@field reverse? boolean
---@field nocombine? boolean
---@field link? string
---@field default? boolean
---@field ctermfg? number
---@field ctermbg? number
---@field cterm? string

---@param name string
---@param values Highlight
local function hi(name, values)
	vim.api.nvim_set_hl(0, name, values)
end

M.setup = function()
	local options = require("eyes.config").options
	local toggle = options.toggle
	local extend = options.extend
	local palette = require("eyes.palettes").setup()

	--Linking

	hi("Icon", { fg = palette.hex10 })
	hi("Border", { fg = palette.hex04 })
	hi("Button", { fg = palette.hex06, bg = palette.hex01 })
	hi("ButtonActive", { fg = palette.hex10, bg = palette.hex02 })

	--Editor

	hi("Normal", { fg = palette.hex10, bg = palette.hex00 })
	hi("VertSplit", { link = "Border" })
	hi("Title", { fg = palette.hex10 })

	hi("NormalFloat", { link = "Normal" })
	hi("FloatBorder", { link = "Border" })
	hi("FloatTitle", { link = "Title" })

	hi("Cursor", { fg = palette.hex00, bg = palette.hex10 })
	hi("lCursor", { link = "Cursor" })
	hi("TermCursor", { link = "Cursor" })
	hi("CursorLine", { bg = palette.hex01 })
	hi("CursorColumn", { link = "CursorLine" })
	hi("QuickFixLine", { link = "CursorLine" })

	hi("Visual", { bg = palette.hex02 })
	hi("MatchParen", { fg = palette.hex10, bg = palette.hex02 })

	hi("LineNr", { fg = palette.hex04 })
	hi("CursorLineNr", { fg = palette.hex10 })
	hi("SignColumn", { link = "Icon" })

	hi("PMenu", { link = "Normal" })
	hi("PMenuSel", { link = "CursorLine" })
	hi("PmenuSbar", { bg = palette.hex01 })
	hi("PmenuThumb", { bg = palette.hex08 })

	hi("TabLine", { fg = palette.hex06, bg = palette.hex00 })
	hi("TabLineFill", { fg = palette.hex10, bg = palette.hex00 })
	hi("TabLineSel", { fg = palette.hex10, bg = palette.hex00, bold = true, italic = true })

	hi("StatusLine", { fg = palette.hex10, bg = palette.hex00, bold = true })
	hi("StatusLineNC", { fg = palette.hex10, bg = palette.hex00 })

	hi("Search", { fg = palette.hex10, bg = palette.hex04 })
	hi("IncSearch", { link = "Search" })
	hi("Substitute", { link = "Search" })

	hi("Directory", { fg = palette.hex10 })

	hi("Folded", { fg = palette.hex10 })
	hi("FoldColumn", { fg = palette.hex10 })

	hi("ModeMsg", { fg = palette.hex10 })
	hi("MoreMsg", { fg = palette.hex10 })

	hi("DiffAdd", { fg = palette.hex07 })
	hi("DiffChange", { fg = palette.hex03 })
	hi("DiffDelete", { fg = palette.hex07 })
	hi("DiffText", { fg = palette.hex07 })

	hi("LspInfoBorder", { link = "FloatBorder" })

	if toggle.spell then
		hi("SpellBad", { sp = palette.hex10, undercurl = true })
		hi("SpellLocal", { sp = palette.hex10, undercurl = true })
		hi("SpellCap", { sp = palette.hex10, undercurl = true })
		hi("SpellRare", { sp = palette.hex10, undercurl = true })
	end

	if toggle.diagnostics then
		hi("DiagnosticError", { fg = palette.hex15 })
		hi("DiagnosticWarn", { fg = palette.hex14 })
		hi("DiagnosticInfo", { fg = palette.hex13 })
		hi("DiagnosticHint", { fg = palette.hex12 })
		hi("DiagnosticOk", { fg = palette.hex11 })

		hi("DiagnosticUnderlineError", { sp = palette.hex15, undercurl = true })
		hi("DiagnosticUnderlineWarn", { sp = palette.hex14, undercurl = true })
		hi("DiagnosticUnderlineInfo", { sp = palette.hex13, undercurl = true })
		hi("DiagnosticUnderlineHint", { sp = palette.hex12, undercurl = true })
		hi("DiagnosticUnderlineOk", { sp = palette.hex11, undercurl = true })

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
		vim.g.terminal_color_15 = palette.hex15
	end

	--Syntax

	hi("SpecialKey", { fg = palette.hex04 })
	hi("NonText", { fg = palette.hex04 })
	hi("Comment", { fg = palette.hex04, italic = true })
	hi("Conceal", { fg = palette.hex13 })

	hi("Constant", { fg = palette.hex08 })

	hi("Identifier", { fg = palette.hex10 })
	hi("Function", { fg = palette.hex09 })

	hi("Statement", { fg = palette.hex07 })

	hi("PreProc", { fg = palette.hex07 })

	hi("Type", { fg = palette.hex08 })

	hi("Special", { fg = palette.hex06 })
	hi("Tag", { fg = palette.hex08 })

	hi("Underlined", { fg = palette.hex10 })
	hi("Ignore", { fg = palette.hex04 })
	hi("Error", { fg = palette.hex15 })
	hi("Todo", { fg = palette.hex07 })

	hi("@constant.builtin", { link = "Constant" })
	hi("@variable.builtin", { fg = palette.hex07, italic = true })
	hi("@constructor", { link = "Function" })

	hi("@tag.attribute", { link = "@attribute" })
	hi("@tag.delimiter", { link = "Delimiter" })

	hi("@type.builtin", { fg = palette.hex08, italic = true })
	hi("@type.qualifier", { link = "@keyword" })

	hi("@text.title", { bold = true })
	hi("@text.strong", { bold = true })
	hi("@text.reference", { fg = palette.hex08 })
	hi("@text.uri", { fg = palette.hex09, underline = true })

	hi("@lsp.type.class", { link = "Function" })
	hi("@lsp.typemod.keyword", { link = "Statement" })

	--Plugins

	--Lazy

	if toggle.plugins.lazy then
		hi("LazyButton", { link = "Button" })
		hi("LazyButtonActive", { link = "ButtonActive" })
		hi("LazyH1", { link = "ButtonActive" })
		hi("LazyProp", { link = "Special" })
		hi("LazyDimmed", { link = "Comment" })
	end

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

	--Null-ls

	if toggle.plugins.null_ls then
		hi("NullLsInfoBorder", { link = "FloatBorder" })
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

	--Telescope

	if toggle.plugins.telescope then
		hi("TelescopeTile", { link = "Title" })
		hi("TelescopeBorder", { link = "FloatBorder" })
		hi("TelescopeSelection", { link = "CursorColumn" })
		hi("TelescopePromptTitle", { link = "Title" })
		hi("TelpescopePromptBorder", { link = "FloatBorder" })
		hi("TelescopePreviewTitle", { link = "Title" })
		hi("TelescopeResultsTitle", { link = "Title" })
	end

	--NeoTree

	if toggle.plugins.neo_tree then
		hi("NeoTreeDimText", { fg = palette.hex05 })
		hi("NeoTreeDotfile", { fg = palette.hex05 })

		hi("NeoTreeFilterTerm", { fg = palette.hex10 })
		NeoTreeFloatTitle = "FloatTitle"
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
		hi("NoiceCmdlineIcon", { link = "Comment" })
		hi("NoiceCmdlineIconSearch", { link = "Icon" })
		hi("NoiceCmdlinePopupBorder", { link = "FloatBorder" })
		hi("NoiceCmdlinePopupBorderSearch", { fg = palette.hex10 })
		hi("NoiceCmdlinePopupTitle", { link = "Title" })

		hi("NoiceCompletionItemKindDefault", { link = "Icon" })
		hi("NoicePopupmenuMatch", { fg = palette.hex10 })
		hi("NoiceCompletionItemWord", { fg = palette.hex10 })

		hi("NoiceVirtualText", { link = "Comment" })

		hi("NoiceConfirmBorder", { link = "FloatBorder" })
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
		hi("NotifyERRORBorder", { link = "FloatBorder" })
		hi("NotifyWARNBorder", { link = "FloatBorder" })
		hi("NotifyINFOBorder", { link = "FloatBorder" })
		hi("NotifyDEBUGBorder", { link = "FloatBorder" })
		hi("NotifyTRACEBorder", { link = "FloatBorder" })

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

	--Leap

	if toggle.plugins.leap then
		hi("LeapMatch", { fg = palette.hex00, bg = palette.hex10 })
		hi("LeapLabelPrimary", { fg = palette.hex00, bg = palette.hex10 })
		hi("LeapLabelSecondary", { fg = palette.hex00, bg = palette.hex07 })
		hi("LeapBackdrop", { link = "Comment" })
	end

	--Illuminate

	if toggle.plugins.illuminate then
		hi("IlluminatedWordText", { fg = palette.hex10, bg = palette.hex02 })
		hi("IlluminatedWordRead", { fg = palette.hex10, bg = palette.hex02 })
		hi("IlluminatedWordWrite", { fg = palette.hex10, bg = palette.hex02 })
	end

	--IndentBlankline

	if toggle.plugins.indent_blankline then
		hi("IndentBlanklineChar", { fg = palette.hex03 })
		hi("IndentBlanklineContextChar", { fg = palette.hex06 })
	end

	--MiniIndentscope

	if toggle.plugins.mini_indentscope then
		hi("MiniIndentscopeSymbol", { fg = palette.hex06 })
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
	-- diagnostic_selected = { link = "TabLineSel" },

	hint = { link = "TabLine" },
	hint_visible = { link = "TabLine" },
	-- hint_selected = { link = "TabLineSel" },
	hint_diagnostic = { link = "TabLine" },
	hint_diagnostic_visible = { link = "TabLine" },
	-- hint_diagnostic_selected = { link = "TabLineSel" },

	info = { link = "TabLine" },
	info_visible = { link = "TabLine" },
	-- info_selected = { link = "TabLineSel" },
	info_diagnostic = { link = "TabLine" },
	info_diagnostic_visible = { link = "TabLine" },
	-- info_diagnostic_selected = { link = "TabLineSel" },

	warning = { link = "TabLine" },
	warning_visible = { link = "TabLine" },
	-- warning_selected = { link = "TabLineSel" },
	warning_diagnostic = { link = "TabLine" },
	warning_diagnostic_visible = { link = "TabLine" },
	-- warning_diagnostic_selected = { link = "TabLineSel" },

	error = { link = "TabLine" },
	error_visible = { link = "TabLine" },
	-- error_selected = { link = "TabLineSel" },
	error_diagnostic = { link = "TabLine" },
	error_diagnostic_visible = { link = "TabLine" },
	-- error_diagnostic_selected = { link = "TabLineSel" },

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
