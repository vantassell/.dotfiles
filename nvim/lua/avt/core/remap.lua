-- set leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- delete without yank
vim.keymap.set("n", "x", '"_x')

vim.keymap.set("n", "<C-d>", "<C-d>zz") -- move down half-page and center
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- move up half-page and center
vim.keymap.set("n", "n", "nzzzv") -- while searching, center the next item
vim.keymap.set("n", "N", "Nzzzv") -- while searching, center the prev item

-- TMUX Navigation
vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")

-- Window Splitting
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>s=", "<C-w>=") -- resize split windows to equal
vim.keymap.set("n", "<leader>sx", "<cmd> close<CR>") -- close current split

-- shift highlighted lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- remap for comment plugin
-- vv commands for comment plugin
-- vim.keymap.set("n", "<leader>/", function()
-- 	require("Comment.api").toggle.linewise.current()
-- end)
-- vim.keymap.set("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")
-- ^^ commands for comment plugin

-- attempt at remapping vim-commentary commands
-- vim.keymap.set("n", "<leader>/", "<Plug>CommentaryLine<CR>", { noremap = true })

-- open LSP error in floating window
vim.keymap.set("n", "gl", "<cmd> lua vim.diagnostic.open_float()<CR>")

-- remove highlighting after escaping search
vim.keymap.set("n", "<Esc>", "<Esc>:noh<CR>", { silent = true })

-- toggle UndoTree
vim.keymap.set("n", "<leader>ut", "<cmd>UndotreeToggle<CR>")

-- -- clear command line
-- vim.keymap.set("n", "<Esc>", "<Esc>:echon ''<CR>", { silent = true })

-- =====================================
-- =           LSP SETTINGS            =
-- =====================================
-- show LSP references
vim.keymap.set("n", "gr", "<cmd>FFF lsp_references<CR>", { desc = "Show LSP references" })

-- go to declaration
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })

-- show lsp definitions
vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Show LSP definitions" })

-- show lsp implementations
vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { desc = "Show LSP implementations" })

-- show lsp type definitions
vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", { desc = "Show LSP type definitions" })

-- see available code actions, in visual mode will apply to selection
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "See available code actions" })

-- smart rename
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Smart rename" })

-- show buffer diagnostics
vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Show buffer diagnostics" })

-- show line diagnostics
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show line diagnostics" })

-- jump to previous diagnostic in buffer
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })

-- jump to next diagnostic in buffer
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })

-- show documentation for what is under cursor
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show documentation for what is under cursor" })

-- show document symbols
vim.keymap.set("n", "<leader>ds", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "Show LSP Document Symbols" })

-- mapping to restart lsp if necessary
vim.keymap.set("n", "<leader>rs", ":lsp restart<CR>", { desc = "Restart LSP" })
