---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("custom.highlights")

M.ui = {
	theme = "nord",
	theme_toggle = { "nord", "penumbra_dark" },
	hl_override = highlights.override,
	hl_add = highlights.add,

	statusline = {
		theme = "minimal", --default, minimal, vscode, vscode_colored

		-- default/round/block/arrow (separators work only for "default" statusline theme;
		-- round and block will work for the minimal theme only)
		-- separator_style = "round",


    -- hide module that shows pwd/cwd
    -- table.remove(modules, 10)
		overriden_modules = function(modules)
			modules[10] = (function()
				return ""
			end)()
		end,
	},
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
