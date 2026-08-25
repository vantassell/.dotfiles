return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      -- list of lsp for mason to install
      ensure_installed = {
        -- "clangd",
        "cssls", -- css lsp
        "gopls", -- go lsp
        "html", -- html lsp
        "lua_ls", -- lua lsp
        "tailwindcss", -- tailwind lsp
        "tsc", -- typescript lsp
        -- "eslint", -- vscode eslint lsp
        "yamlls", -- yaml lsp
      },
    },
      dependencies = {
        {
          "mason-org/mason.nvim",
          opts = {
            ui = {
              icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
              },
            },
          },
        },
        "neovim/nvim-lspconfig",
    },
  },
    {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      opts = {
        -- list of formatter to install
        ensure_installed = {
          "prettier", -- prettier formatter
          "stylua", -- lua formatter
          "gofumpt", -- go formatter
          "golangci-lint", -- go linter
          "staticcheck", -- go linter

          -- NOTE: rather than use a global eslint_d, use nvim-eslint that uses vscode-eslint that finds package.json for corrent eslint version
          -- "eslint_d", -- eslint linter daemon
        },
        auto_update = true,
      },
      dependencies = {
        "mason-org/mason.nvim",
      },
    },
}
