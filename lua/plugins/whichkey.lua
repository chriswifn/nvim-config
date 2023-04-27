-- whichkey
local M = {
  "folke/which-key.nvim",
  event = "BufEnter",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup()
  end,
}

return M
