-- [[ Kickstart Options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = "unnamedplus"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- ############ --
-- AVT SETTINGS --
-- ############ --

vim.o.scrolloff = 5

vim.o.ignorecase = true
vim.o.expandtab = true

-- timeout for key combos
vim.opt.timeoutlen = 1200 -- default 1000

-- line numbers
vim.opt.relativenumber = true

-- incremntal search
vim.opt.incsearch = true

--hihlight all match
vim.o.hlsearch = true

-- mark char limit
vim.o.colorcolumn = "80"

-- vim.o.list = true

vim.linebreak = true

vim.o.wrap = true

-- setup spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.cursorline = true
-- vim.opt.cursorlineopt = "#222222, "

-- SUGGESTED SETTINGS FOR NVIM-TREE
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- TODO: add nvim-cursorline
-- TODO: NvimTreeOpenedFolderName = { fg = "green", bold = true }
-- unused settings from my nvChad init.lua
--
-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- i
