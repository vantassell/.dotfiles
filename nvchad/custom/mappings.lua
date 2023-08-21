---@type MappingsTable
local M = {}

M.general = {
	n = {
		-- [";"] = { ":", "enter command mode", opts = { nowait = true } },

		-- Delete without yank
		["x"] = { '"_x' },

		["<C-d>"] = { "<C-d>zz", "move down half-page and center" },
		["<C-u>"] = { "<C-u>zz", "move up half-page and center" },
		["n"] = { "nzzzv", "not sure" },
		["N"] = { "Nzzzv", "not sure" },

		-- Navigation
		["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
		["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
		["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
		["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },

		--

		-- Window Splitting
		["<leader>sv"] = { "<C-w>v", "split window vertically" },
		["<leader>sh"] = { "<C-w>s", "split window horizontally" },
		["<leader>s="] = { "<C-w>=", "resize split windows to equal" },
		["<leader>sx"] = { "<cmd> close<CR>", "close current split" },

		-- Telescope mapping
		-- ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
		["<leader>ff"] = { "<cmd> Telescope git_files <CR>", "Find within git files" },
		["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
		},
	}
-- more keybinds!

return M
