local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("NoiceCmdlineIcon", { link = "Icon" })
	hl("NoiceCmdlineIconSearch", { link = "Icon" })
	hl("NoiceCmdlinePopupBorder", { link = "Border" })
	hl("NoiceCmdlinePopupBorderSearch", { fg = palette.hex10 })
	hl("NoiceCmdlinePopupTitle", { link = "Title" })

	hl("NoiceCompletionItemKindDefault", { link = "Icon" })
	hl("NoicePopupmenuMatch", { fg = palette.hex10 })
	hl("NoiceCompletionItemWord", { fg = palette.hex10 })

	hl("NoiceVirtualText", { link = "Comment" })

	hl("NoiceConfirmBorder", { link = "Border" })
	hl("NoiceFormatConfirm", { link = "Button" })
	hl("NoiceFormatConfirmDefault", { link = "ButtonActive" })

	hl("NoiceLspProgressClient", { link = "Title" })
	hl("NoiceLspProgressSpinner", { link = "Title" })
	hl("NoiceLspProgressTitle", { link = "Title" })

	hl("NoiceFormatProgressTodo", { bg = palette.hex02 })
	hl("NoiceFormatProgressDone", { bg = palette.hex06 })
end

return M
