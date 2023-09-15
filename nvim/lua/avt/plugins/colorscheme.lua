return {
	"shaunsingh/nord.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	lazy = false,
	opts = {
		markdown = {
			headline_highlights = {
				"Headline1",
				"Headline2",
				"Headline3",
				"Headline4",
				"Headline5",
				"Headline6",
			},
			codeblock_highlight = "CodeBlock",
			dash_highlight = "Dash",
			quote_highlight = "Quote",
			nord_contrast = true,
			nord_borders = true,
			nord_disable_backgroun = true,
		},
	},
	config = function()
		vim.g.nord_contrast = true
		vim.g.nord_borders = false
		vim.g.nord_disable_background = false
		vim.g.nord_italic = false
		vim.g.nord_uniform_diff_background = true
		vim.g.nord_bold = false
		vim.cmd([[colorscheme nord]])
	end,
}
