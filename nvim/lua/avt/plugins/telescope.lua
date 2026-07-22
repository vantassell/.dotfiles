return {
  "nvim-telescope/telescope.nvim",
  version = "*",
  enabled = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      -- required for telescope-fzf-native
      extensions = {
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case", -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        },
      },
      pickers = {
        find_files = {
          file_ignore_patterns = { "node_modules", ".git", "DS_Store", "^vendor/", "routeTree.gen.ts" },
          hidden = true,
          show_line = false,
        },
        find_grep = {
          file_ignore_patterns = { "node_modules", ".git", "DS_Store", "^vendor/", "/vendor/", "routeTree.gen.ts" },
          hidden = true,
          show_line = false,
        },
        live_grep = {
          file_ignore_patterns = { "node_modules", "^vendor/", "/vendor/", "routeTree.gen.ts" },
          hidden = true,
          show_line = false,
        },
        lsp_references = {
          file_ignore_patterns = { "node_modules", ".git", "DS_Store", "^vendor/", "routeTree.gen.ts" },
          hidden = true,
          show_line = false, -- disables showing preview in picker tab (to make room for long file name)
        },
      },
      defaults = {
        theme = "center",
        previewer = "true",
        sorting_strategy = "descending",
        path_display = { "truncate" },
        layout_strategy = "vertical",
        layout_config = {
          scroll_speed = 4,
          vertical = {
            prompt_position = "bottom",
            preview_height = 0.6,
          },
        },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            -- ["<C-y>"] = actions.preview_scrolling_up,
            -- ["<C-e>"] = actions.preview_scrolling_down,
          },
          n = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            -- ["<C-y>"] = actions.preview_scrolling_up,
            -- ["<C-e>"] = actions.preview_scrolling_down,
          },
        },
      },
    })

    -- needed for telescope-fzf-native
    telescope.load_extension("fzf")

    -- set keymaps --
    vim.keymap.set("n", "<leader>fa", "<cmd>Telescope find_files<CR>")
    vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
    -- vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope git_files<CR>")
    vim.keymap.set("n", "<leader>fw", "<cmd>Telescope grep_string<CR>", { desc = "Find string under cursor in cwd" })
    vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>")
  end,
}
