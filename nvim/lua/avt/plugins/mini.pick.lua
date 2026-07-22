return {
  "nvim-mini/mini.pick",
  enabled = false,
  lazy = false,
  version = "*",
  opts = {},
  keys = function()
    -- Open file picker
    vim.keymap.set("n", "<leader>ff", "<Cmd>Pick files<CR>", { desc = "Pick files" })
    -- Open grep picker to search text in project
    vim.keymap.set("n", "<leader>fg", "<Cmd>Pick grep_live<CR>", { desc = "Grep live" })
    -- Open buffer picker
    vim.keymap.set("n", "<leader>fb", "<Cmd>Pick buffers<CR>", { desc = "Pick buffers" })
  end,
}
