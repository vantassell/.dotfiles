return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazh = false,
    -- event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    -- dependencies = {
    --   "windwp/nvim-ts-autotag",
    -- },
    config = function()
      -- vim.filetype.add({
      --   extension = {
      --     templ = "templ",
      --     alloy = "alloy",
      --   },
      -- })

      -- Explicitly list parsers you want to install
      -- local parsers = {
      --   "go",
      --   "gitignore",
      --   "helm",
      --   "templ",
      --   "json",
      --   "javascript",
      --   "typescript",
      --   "tsx",
      --   "yaml",
      --   "html",
      --   "css",
      --   "markdown",
      --   "markdown_inline",
      --   "svelte",
      --   "graphql",
      --   "bash",
      --   "lua",
      --   "vim",
      --   "dockerfile",
      --   "gitignore",
      --   "query",
      --   "vimdoc",
      --   "yaml",
      --   "c",
      -- }
      --
      -- Install parsers via the new API
      -- require("nvim-treesitter").install(parsers)

      -- Attach native Neovim treesitter highlighting automatically
      -- vim.api.nvim_create_autocmd("FileType", {
      --   pattern = parsers,
      --   callback = function()
      --     vim.treesitter.start()
      --   end,
      -- })

      local treesitter = require("nvim-treesitter")

      -- configure treesitter
      treesitter.setup({
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        auto_tag = {
          enable = true,
        },
        ensure_installed = {
          "go",
          "gitignore",
          "helm",
          "templ",
          "json",
          "javascript",
          "typescript",
          "tsx",
          "yaml",
          "html",
          "css",
          "markdown",
          "markdown_inline",
          "svelte",
          "graphql",
          "bash",
          "lua",
          "vim",
          "dockerfile",
          "gitignore",
          "query",
          "vimdoc",
          "yaml",
          "c",
        },
        --   -- adding alloy manually
        --   filetype = { "alloy" },
        --   -- Automatically install missing parsers when entering buffer
        --   -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        --   auto_install = true,
      })
    end,
  },
}
