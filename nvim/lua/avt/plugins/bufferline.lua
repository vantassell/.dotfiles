return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	version = "*",
	config = function()
		local highlights = require("nord").bufferline.highlights({
			italic = true,
			bold = true,
			fill = "#181c24",
		})

		require("bufferline").setup({
			options = {
				offsets = {
					{
						filetype = "NvimTree",
						text = "NVimTree",
						separator = true,
						text_align = "left",
					},
				},

				highlights = highlights,
				-- highlights = {
				-- 	offset_separator = {
				-- 		guifg = "#dd00dd",
				-- 		guibg = "#dddddd",
				-- 	},
				-- },
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local icon = level:match("error") and " " or " "
					return "" .. icon .. count
				end,
				-- separator_style = { "", "" },
				separator_style = "slant",
				modified_icon = "●",
				close_icon = "",
				show_close_icon = true,
				show_buffer_close_icons = true,
				always_show_bufferline = true,
				-- mode = "tabs",
				-- TODO: use the settings from nord plugin here
			},
		})
	end,
}
