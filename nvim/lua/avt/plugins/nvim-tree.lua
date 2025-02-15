return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- change color for arrows in tree to light blue
		vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

		-- configure nvim-tree
		nvimtree.setup({
			sort_by = "case_sensitive",
			disable_netrw = true,
			hijack_netrw = true,
			hijack_cursor = true,
			hijack_unnamed_buffer_when_opening = false,
			sync_root_with_cwd = true,
			update_focused_file = {
				enable = true,
				update_root = false,
			},
			view = {
				adaptive_size = true,
				side = "left",
				-- width = 30,
				preserve_window_proportions = true,
				relativenumber = true,
			},
			git = {
				enable = false,
				ignore = false, -- true means to ignore files that are ignored by git
			},
			filesystem_watchers = {
				enable = true,
			},
			actions = {
				open_file = {
					resize_window = true,
				},
			},
			renderer = {
				group_empty = true,
				root_folder_label = false,
				highlight_git = false,
				highlight_opened_files = "none",
				-- TODO: NvimTreeOpenedFolderName = { fg = "green", bold = true }
				indent_markers = {
					enable = true,
				},

				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = false,
					},
					glyphs = {
						default = "󰈚",
						symlink = "",
						folder = {
							default = "",
							empty = "",
							empty_open = "",
							open = "",
							symlink = "",
							symlink_open = "",
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
							-- arrow_open = "",
							-- arrow_closed = "",
						},
						git = {
							unstaged = "✗",
							staged = "✓",
							unmerged = "",
							renamed = "➜",
							untracked = "★",
							deleted = "",
							ignored = "◌",
						},
					},
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			-- actions = {
			--   open_file = {
			--     window_picker = {
			--       enable = false,
			--     },
			--   },
			-- },
			filters = {
				custom = { ".DS_Store", "._tmpl%.go" },
				-- dotfiles = true,
			},
		})

		-- set keymaps
		vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

		-- local keymap = vim.keymap -- for conciseness
		--
		-- keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
		-- keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
		-- keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
		-- keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
	end,
}
