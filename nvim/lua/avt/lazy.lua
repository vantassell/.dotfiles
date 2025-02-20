-- bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- lazy setup
require("lazy").setup({
	--{plugins}, {opts}) --
	{ import = "avt.plugins" },
	{ import = "avt.plugins.lsp" },
}, {
	-- checks if any plugin is out of date
	checker = {
		enabled = true,
		notify = false,
	},
	-- notification for changes
	change_detection = {
		notify = false,
	},
})
