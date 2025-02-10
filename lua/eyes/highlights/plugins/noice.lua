local M = {}

local hl = require("eyes.utility").hl
local palette = require("eyes.palette").palette

M.setup = function()
	hl("NoiceCmdlineIcon", "Icon")
	hl("NoiceCmdlineIconSearch", "Icon")
	hl("NoiceCmdlinePopupBorder", "Border")
	hl("NoiceCmdlinePopupBorderSearch", { fg = palette.hex10 })
	hl("NoiceCmdlinePopupTitle", "Title")

	hl("NoiceCompletionItemKindDefault", "Icon")
	hl("NoicePopupmenuMatch", { fg = palette.hex10 })
	hl("NoiceCompletionItemWord", { fg = palette.hex10 })

	hl("NoiceVirtualText", "Comment")

	hl("NoiceConfirmBorder", "Border")
	hl("NoiceFormatConfirm", "Button")
	hl("NoiceFormatConfirmDefault", "ButtonActive")

	hl("NoiceLspProgressClient", "Title")
	hl("NoiceLspProgressSpinner", "Title")
	hl("NoiceLspProgressTitle", "Title")

	hl("NoiceFormatProgressTodo", { bg = palette.hex02 })
	hl("NoiceFormatProgressDone", { bg = palette.hex06 })
end

return M
