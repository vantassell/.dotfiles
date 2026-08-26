-- ################################
-- #                              #
-- #      BOOTSTRAP SECTION       #
-- #                              #
-- ################################
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- ################################
-- #                              #
-- #        CONFIG SECTION        #
-- #                              #
-- ################################
require("lazy").setup({
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
