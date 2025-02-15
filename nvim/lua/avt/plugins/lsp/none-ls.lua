return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        -- eslint is setup via its LSP
      },
    })

    vim.keymap.set("n", "<leader>fm", function()
      vim.lsp.buf.format()
      print("triggered format")
    end, {})
  end,
}
