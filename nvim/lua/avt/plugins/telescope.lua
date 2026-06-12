return {
  "nvim-telescope/telescope.nvim",
  branch = "master",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = function()
        return vim.fn.executable("make") == 1
      end,
    },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
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
          vertical = {
            prompt_position = "bottom",
            preview_height = 0.6,
          },
          horizontal = {
            prompt_position = "bottom",
            preview_width = 0.5,
          },
        },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps --
    vim.keymap.set("n", "<leader>fa", "<cmd>Telescope find_files<CR>")
    vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
    vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope git_files<CR>")
    vim.keymap.set("n", "<leader>f*", "<cmd>Telescope grep_string<CR>", { desc = "Find string under cursor in cwd" })
    vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>")
  end,
}
