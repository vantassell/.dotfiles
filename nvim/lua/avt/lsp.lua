-- NOTE: run this after settings up lazy and installing all of the LSP
--
-- global keymaps and options for all LSP
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf, silent = true }

    -- show definition, references
    opts.desc = "Show LSP references"
    vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

    -- go to declaration
    opts.desc = "Go to declaration"
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

    -- show lsp definitions
    opts.desc = "Show LSP definitions"
    vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

    -- show lsp implementations
    opts.desc = "Show LSP implementations"
    vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

    -- show lsp type definitions
    opts.desc = "Show LSP type definitions"
    vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

    -- see available code actions, in visual mode will apply to selection
    opts.desc = "See available code actions"
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

    -- smart rename
    opts.desc = "Smart rename"
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

    -- show  diagnostics for entire file
    opts.desc = "Show buffer diagnostics"
    vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

    -- show diagnostics for line
    opts.desc = "Show line diagnostics"
    vim.keymap.set("n", "<leader>gl", vim.diagnostic.open_float, opts)

    -- jump to previous diagnostic in buffer
    opts.desc = "Go to previous diagnostic"
    vim.keymap.set("n", "[d", function()
      vim.diagnostic.jump({ count = -1, float = true })
    end, opts)
    --
    -- jump to next diagnostic in buffer
    opts.desc = "Go to next diagnostic"
    vim.keymap.set("n", "]d", function()
      vim.diagnostic.jump({ count = 1, float = true })
    end, opts)

    -- show documentation for what is under cursor
    opts.desc = "Show documentation for what is under cursor"
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

    -- show document symbols
    opts.desc = "Show LSP Document Symbols"
    vim.keymap.set("n", "<leader>ds", "<cmd>Telescope lsp_document_symbols<CR>")

    -- mapping to restart lsp if necessary
    opts.desc = "Restart LSP"
    vim.keymap.set("n", "<leader>rs", ":lsp restart<CR>", opts)
  end,
})

-- Change the diagnostic symbols in the sign column (gutter)
vim.diagnostic.config({
  -- virtual_text = {
  --   source = "if_many", -- ture OR "if_many"
  -- },
  float = {
    source = true, -- true OR "if_many"
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.INFO] = " ",
      [vim.diagnostic.severity.HINT] = "󰠠 ",
    },
    linehl = {
      [vim.diagnostic.severity.ERROR] = "Error",
      [vim.diagnostic.severity.WARN] = "Warn",
      [vim.diagnostic.severity.INFO] = "Info",
      [vim.diagnostic.severity.HINT] = "Hint",
    },
  },
})
