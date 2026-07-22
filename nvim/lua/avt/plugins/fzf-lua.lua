return {
  "ibhagwan/fzf-lua",
  enabled = false,
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    winopts = {
      preview = { horizontal = "up:70%" },
      width = 0.90,
      height = 0.90,
    },
    files = {
      formatter = "path.dirname_first", -- Display filenames before paths
    },
    git_icons = false,
    file_icons = false,
    color_icons = false,
    oldfiles = {
      include_current_session = true,
    },
    previewers = {
      default = "builtin",
      builtin = {
        syntax_limit_b = 1024 * 100, -- 100 KB
      },
    },
  },
  keys = function()
    vim.keymap.set("n", "<leader>fa", "<cmd>FzfLua files<cr>")
    vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>")

    -- remove blinking cursor that fzf-lua adds to picker windows
    -- vim.opt.guicursor:remove({ "t:block-blinkon500-blinkoff500-TermCursor" })
  end,
  -- config = function()
  --   -- set keymaps --
  --   local fzf = require("fzf-lua")
  --   -- vim.keymap.set("n", "<leader>fa", fzf.files)
  --   vim.keymap.set("n", "<leader>fa", "<cmd>FzfLua files<cr>")

  --   -- vim.keymap.set("n", "<leader>fg", fzf.live_grep)
  --   -- vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
  --   vim.keymap.set("n", "<leader>fg", function()
  --     require("fzf-lua").live_grep({
  --       winopts = {
  --         height = 0.90,
  --         width = 0.70,
  --         preview = {
  --           horizontal = "up:70%",
  --         },
  --       },
  --     })
  --   end)
  --   -- vim.keymap.set("n", "<leader>ff", fzf.git_files)
  --   -- vim.keymap.set("n", "<leader>f*", "<cmd>Telescope grep_string<CR>", { desc = "Find string under cursor in cwd" })
  --   -- vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>")

  --   -- remove blinking cursor that fzf-lua adds to picker windows
  --   vim.opt.guicursor:remove({ "t:block-blinkon500-blinkoff500-TermCursor" })
  -- end,
}
