return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    "mason-org/mason.nvim",
  },
  opts = {
    -- list of formatter to install
    ensure_installed = {
      "prettier", -- prettier formatter
      "stylua", -- lua formatter
      "gofumpt", -- go formatter
      "golangci-lint", -- go linter
      "eslint_d", -- eslint linter daemon
      "staticcheck", -- go linter
    },
    auto_update = true,
  },
}
