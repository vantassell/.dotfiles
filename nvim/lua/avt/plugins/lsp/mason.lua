return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- import mason-tool-installer
    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    -- list of servers for mason to install
    mason_lspconfig.setup({
      ensure_installed = {
        "ts_ls",
        "html",
        "cssls",
        "tailwindcss",
        -- "lua_ls",
        "clangd",
        "gopls",
        "templ",
      },
    })

    -- list of formatters for mason_tool to install
    mason_tool_installer.setup({
      ensure_installed = {
        "lua_ls",
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "gofumpt", -- go formatter
        "golangci-lint", -- go linter
        "eslint_d", -- eslint linter daemon
      },
    })

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
    })

    -- sets height of completion window
    vim.o.pumheight = 5
  end,
}
