return {
  "romus204/tree-sitter-manager.nvim",
  enabled = true,
  lazy = false,
  dependencies = {
    -- NOTE: tree-sitter CLI must be installed system-wide
    {
      "nvim-treesitter/nvim-treesitter",
      enabled = true,
      branch = "main",
      lazy = false,
      build = ":TSUpdate",
      main = "nvim-treesitter",
    },
  },
  config = function()
    require("tree-sitter-manager").setup({
      auto_install = true, -- auto-install when a new filetype is encountered
    })
  end,
}
