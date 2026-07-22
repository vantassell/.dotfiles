return {
  "dmtrKovalenko/fff.nvim",
  enabled = false,
  build = function()
    -- downloads a prebuilt binary or falls back to cargo build
    require("fff.download").download_or_build_binary()
  end,
  -- for nixos:
  -- build = "nix run .#release",
  opts = {
    debug = {
      enabled = false,
      show_scores = true,
    },
    prompt_vim_mode = true,
    git = {
      signs = false, -- Disables sign-column indicators
      highlight = false, -- Set to false to remove git status colors on filenames
    },
    prompt = "> ",
    layout = {
      height = 0.8,
      width = 0.8,
      prompt_position = "bottom", -- or 'top'
      preview_position = "top", -- 'left' | 'right' | 'top' | 'bottom'
      preview_size = 0.7,
      -- Border style for the picker windows. Leave unset (nil) to follow the
      -- global `vim.o.winborder`; set it to override fff's borders independently.
      border = "single", -- 'single' | 'double' | 'rounded' | 'solid' | 'shadow' | 'none'
      flex = { size = 130, wrap = "top" },
      min_list_height = 10, --  do not display anything except the list below this threshold
      show_scrollbar = true,
      path_shorten_strategy = "middle_number", -- 'middle_number' | 'middle' | 'end' | 'start'
      anchor = "center",
    },
    keymaps = {
      close = "<Esc>",
      select = "<CR>",
      move_up = "<C-k>",
      move_down = "<C-j>",
      preview_scroll_up = "<C-u>",
      preview_scroll_down = "<C-d>",
      cycle_grep_modes = "<S-Tab>",
      -- grep mode only: jump cursor to first match of next/prev file group
      grep_jump_to_next_file = { "<C-A-n>", "<A-Down>" },
      grep_jump_to_prev_file = { "<C-A-p>", "<A-Up>" },
      cycle_previous_query = "<C-Up>",
      toggle_select = "<Tab>",
      send_to_quickfix = "<C-q>",
      focus_list = "<leader>l",
      focus_preview = "<leader>p",
    },
    preview = {
      enabled = true,
      max_size = 10 * 1024 * 1024,
      chunk_size = 8192,
      binary_file_threshold = 1024,
      imagemagick_info_format_str = "%m: %wx%h, %[colorspace], %q-bit",
      line_numbers = false,
      cursorlineopt = "both",
      wrap_lines = false,
      filetypes = {
        svg = { wrap_lines = true },
        markdown = { wrap_lines = true },
        text = { wrap_lines = true },
      },
    },
  },
  lazy = false, -- the plugin lazy-initialises itself
  keys = {
    {
      "fa",
      function()
        require("fff").find_files()
      end,
      desc = "FFFind files",
    },
    {
      "fg",
      function()
        require("fff").live_grep()
      end,
      desc = "LiFFFe grep",
    },
    {
      "fz",
      function()
        require("fff").live_grep({ grep = { modes = { "fuzzy", "plain" } } })
      end,
      desc = "Live fffuzy grep",
    },
    {
      "fw",
      function()
        require("fff").live_grep_under_cursor()
      end,
      mode = { "n", "x" },
      desc = "Search current word / selection",
    },
  },
}
