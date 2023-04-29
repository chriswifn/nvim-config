local M = {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = function()
    return {
      style = "night",
      hide_inactive_statusline = true,
      transparent = true,
      styles = {
        keywords = { bold = true },
        functions = { bold = true },
      },
      on_colors = function(colors)
        colors.bg_statusline = "#101010" 
      end,
    }
  end,
  config = function(_, opts)
    vim.o.background = "dark"
    local tokyonight = require("tokyonight")
    tokyonight.setup(opts)
    tokyonight.load()
  end,
}

return M
