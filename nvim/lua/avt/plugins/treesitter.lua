return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			vim.filetype.add({
				extension = {
					templ = "templ",
					alloy = "alloy",
				},
			})

			-- import nvim-treesitter plugin
			local treesitter = require("nvim-treesitter.configs")

			-- configure treesitter
			treesitter.setup({
				highlight = {
					enable = true,
				},
				-- indent = { enable = true },
				auto_tag = {
					enable = true,
				},
				ensure_installed = {
					"go",
					"gitignore",
					"helm",
					"templ",
					"json",
					"javascript",
					"typescript",
					"tsx",
					"yaml",
					"html",
					"css",
					"markdown",
					"markdown_inline",
					"svelte",
					"graphql",
					"bash",
					"lua",
					"vim",
					"dockerfile",
					"gitignore",
					"query",
					"vimdoc",
					"yaml",
					"c",
				},
				-- adding alloy manually
				filetype = { "alloy" },
				-- Automatically install missing parsers when entering buffer
				-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
				auto_install = true,
			})
		end,
	},
}
