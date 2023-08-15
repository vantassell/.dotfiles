-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- i

local opt = vim.opt
opt.scrolloff = 8
opt.ignorecase = true
opt.expandtab = true

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- incremntal search
opt.incsearch = true

--hihlight all match
opt.hlsearch = true

opt.colorcolumn = "80"

opt.wrap = false

-- setup spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
