return {
  "folke/snacks.nvim",
  enabled = false,
  opts = {
    picker = {
      layout = {
        preset = "custom",
        cycle = false,
      },
      layouts = {
        custom = {
          reverse = true,
          layout = {
            box = "vertical",
            backdrop = true,
            width = 0.8,
            height = 0.9,
            border = "none",
            {
              win = "preview",
              title = "{preview:Preview}",
              border = true,
              title_pos = "center",
            },
            {
              box = "vertical",
              { win = "list", title = " Results ", title_pos = "center", border = true },
              { win = "input", height = 1, border = true, title = "{title} {live} {flags}", title_pos = "center" },
            },
          },
        },
      },
    },
  },
  keys = {
    -- Top Pickers & Explorer
    {
      "<leader>fa",
      function()
        Snacks.picker.smart()
      end,
      desc = "Smart Find Files",
    },
    {
      "<leader>fg",
      function()
        Snacks.picker.grep()
      end,
      desc = "Grep",
    },
    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "File Explorer",
    },
  },
}
