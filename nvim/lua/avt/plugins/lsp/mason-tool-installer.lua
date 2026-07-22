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
      -- rather than use a global eslint, use nvim-eslint that uses vscode-eslint that finds package.json for corrent eslint version
      -- "eslint_d", -- eslint linter daemon
      "staticcheck", -- go linter
    },
    auto_update = true,
  },
}
