-- autopairs
local M = {
  "windwp/nvim-autopairs",
  event = "BufReadPre",
  config = function()
    require("nvim-autopairs").setup()
  end,
}

return M
