return {
  "stevearc/conform.nvim",
  enabled = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    -- "plugins": ["prettier-plugin-organize-imports"]

    -- local prettier_plugin_organize_imports = "/"
    conform.setup({
      formatters_by_ft = {
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        javascriptreact = { "prettierd", "prettier", stop_after_first = true },
        typescriptreact = { "prettierd", "prettier", stop_after_first = true },
        css = { "prettierd", "prettier", stop_after_first = true },
        html = { "prettierd", "prettier", stop_after_first = true },
        json = { "prettierd", "prettier", stop_after_first = true },
        yaml = { "prettierd", "prettier", stop_after_first = true },
        markdown = { "prettierd", "prettier", stop_after_first = true },
        lua = { "stylua" },
        go = { "gofmt" },
      },

      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 1000,
      },
      log_level = vim.log.levels.DEBUG,
    })

    vim.keymap.set({ "n", "v" }, "<leader>fm", function()
      conform.format({
        lsp_fallback = true,
        timeout_ms = 1000,
        print("triggered formatting"),
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
