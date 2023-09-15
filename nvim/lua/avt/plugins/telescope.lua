return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	-- tag = '0.1.2',  -- or, branch = '0.1.x',
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		-- local builtin = require('telescope.builtin')
		{
			"<leader>fa",
			function()
				require("telescope.builtin").find_files()
			end,
			{},
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep()
			end,
			{},
		},
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags()
			end,
			{},
		},
		{
			"<leader>ff",
			function()
				require("telescope.builtin").git_files()
			end,
			{},
		},
	},
	config = function()
		require("telescope").load_extension("fzf")
		require("telescope").setup({
			defaults = {
				theme = "center",
				sorting_strategy = "descending",
				layout_config = {
					horizontal = {
						prompt_position = "bottom",
						preview_width = 0.5,
					},
				},
			},
		})
	end,
}
