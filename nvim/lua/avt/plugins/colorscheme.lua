return {
  "shaunsingh/nord.nvim",
  priority = 1000, -- make sure to load this before all the other plugins
  lazy = false,
  opts = {},
  config = function()
    vim.g.nord_contrast = true
    vim.g.nord_borders = false
    vim.g.nord_disable_background = false
    vim.g.nord_cursorline_transparent = false
    vim.g.nord_italic = false
    vim.g.nord_uniform_diff_background = false
    vim.g.nord_bold = true
    vim.cmd("colorscheme nord")
    vim.api.nvim_set_hl(0, "SnacksPickerDir", { link = "Text" })
  end,
}
