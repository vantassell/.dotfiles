return {
	-- Syntax highlithing and many more features
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			vim.treesitter.language.register("html", "ejs")
			vim.treesitter.language.register("javascript", "ejs")
			-- vim.treesitter.language.register("templ", "templ")
			-- vim.treesitter.language.register("html", "gohtml")
			vim.filetype.add({
				extension = {
					templ = "templ",
				},
			})

			local treesitter = require("nvim-treesitter.configs")
			treesitter.setup({
				ensure_installed = {
					"c",
					"cpp",
					"css",
					"go",
					"lua",
					"html",
					"gitignore",
					-- "python",
					"rust",
					-- "tsx",
					"javascript",
					-- "typescript",
					"templ",
					"vimdoc",
					"vim",
				},
				-- Install parsers synchronously (only applied to `ensure_installed`)
				sync_install = false,

				-- Automatically install missing parsers when entering buffer
				-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
				auto_install = true,

				highlight = {
					-- `false` will disable the whole extension
					enable = true,

					-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
					-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
					-- Using this option may slow down your editor, and you may see some duplicate highlights.
					-- Instead of true it can also be a list of languages
					additional_vim_regex_highlighting = false,
				},
			})
		end,
	},
}
