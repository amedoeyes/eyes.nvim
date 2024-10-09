local M = {}

local config = require("eyes.config")

M.setup = function()
	local plugins = config.options.features.plugins
	for plugin, enabled in pairs(plugins) do
		if enabled then
			require("eyes.highlights.plugins." .. plugin).setup()
		end
	end
end

return M
