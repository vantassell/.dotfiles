return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    lualine.setup({
      options = {
        theme = "nord",
        globalstatus = false,
      },
      sections = {
        lualine_b = {}, -- remove git details to save width when split
        lualine_c = {
          {
            "filename",
            "%m",
            path = 3,
          },
        },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "encoding" },
          -- { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
