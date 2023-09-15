return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		local colors = {
			-- blue = "#65D1FF",
			blue = "#78a2c1",
			green = "#3EFFDC",
			violet = "#FF61EF",
			yellow = "#FFDA7B",
			red = "#FF4A4A",
			fg = "#c3ccdc",
			-- bg = "#112638",
			bg = "#4c566a",
			-- inactive_bg = "#2c3043",
			inactive_bg = "#000000",
		}
		--
		-- TMUX COLORS
		--
		-- set -g @nova-pane-active-border-style "#44475a"
		-- set -g @nova-pane-border-style "#282a36"
		-- set -g @nova-status-style-bg "#4c566a"
		-- set -g @nova-status-style-fg "#d8dee9"
		-- set -g @nova-status-style-active-bg "#89c0d0"
		-- set -g @nova-status-style-active-fg "#2e3540"
		-- set -g @nova-status-style-double-bg "#2d3540"
		--
		-- set -g @nova-pane "#I#{?pane_in_mode,  #{pane_mode},}  #W"
		--
		-- set -g @nova-segment-mode "#{?client_prefix,Ω,ω}"
		-- set -g @nova-segment-mode-colors "#78a2c1 #2e3440"
		--
		-- set -g @nova-segment-whoami "#(whoami)@#h"
		-- set -g @nova-segment-whoami-colors "#78a2c1 #2e3440"
		--
		-- set -g @nova-segment-time "%H:%M"
		-- set -g @nova-segment-time-colors "#4c566a #d8dee9"
		--
		-- END TMUX COLORS
		local my_lualine_theme = {
			normal = {
				a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			insert = {
				a = { bg = colors.green, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			visual = {
				a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			command = {
				a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			replace = {
				a = { bg = colors.red, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			inactive = {
				a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
				b = { bg = colors.inactive_bg, fg = colors.semilightgray },
				c = { bg = colors.inactive_bg, fg = colors.semilightgray },
			},
		}

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				-- theme = my_lualine_theme,
				theme = "nord",
				globalstatus = false,
			},
			sections = {
				lualine_c = {
					{
						"filename",
						path = 3,
					},
				},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "encoding" },
					-- { "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}
