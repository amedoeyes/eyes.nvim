local M = {}

local config = require("eyes.config")

M.setup = function()
	local features = config.options.features

	require("eyes.highlights.core.links").setup()

	if features.editor then
		require("eyes.highlights.core.editor").setup()
	end

	if features.diff then
		require("eyes.highlights.core.diff").setup()
	end

	if features.terminal then
		require("eyes.highlights.core.terminal").setup()
	end

	if features.syntax then
		require("eyes.highlights.core.syntax").setup()
	end

	if features.spell then
		require("eyes.highlights.core.spell").setup()
	end

	if features.diagnostics then
		require("eyes.highlights.core.diagnostics").setup()
	end
end

return M
