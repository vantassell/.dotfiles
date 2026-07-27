return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  opts = {

    -- list of lsp to install
    ensure_installed = {
      -- "clangd",
      "cssls", -- css lsp
      "gopls", -- go lsp
      "html", -- html lsp
      "lua_ls", -- lua lsp
      "tailwindcss", -- tailwind lsp
      -- "ts_ls", -- legacy typescript lsp wwritten in node
      "tsgo", -- new typescript lsp written in go
      "yamlls", -- yaml lsp
    },

    -- configs for specific lsp
    vim.lsp.config("lua_ls", {
      -- via neovim issue #21686b to globally suppress "undefined global 'vim'" error
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using
            -- (most likely LuaJIT in the case of Neovim)
            version = "LuaJIT",
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {
              "vim",
              "require",
            },
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      },
    }),
  },
  -- do keymapping in main remap.lua since we have multiple LSP
  -- keys = {},
}
