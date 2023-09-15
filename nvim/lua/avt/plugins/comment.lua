return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
  },
  config = true -- runs require('Comment').setup()
}
