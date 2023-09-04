-- local M = {
--   "sainnhe/gruvbox-material",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.o.background = "dark"
--     vim.g.gruvbox_material_foreground = 'original'
--     vim.g.gruvbox_material_transparent_background = 1
--     vim.g.gruvbox_material_better_performance = 1
--     vim.g.gruvbox_material_enable_bold = 1
--     vim.cmd("colorscheme gruvbox-material")
--   end
-- }

-- return M

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
