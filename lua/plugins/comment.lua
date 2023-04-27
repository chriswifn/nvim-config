-- comments
local M = {
  "numToStr/Comment.nvim",
  event = "BufReadPre",
  config = function()
    require("Comment").setup()
  end,
}

return M
