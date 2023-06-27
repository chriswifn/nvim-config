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
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent_mode = true,
  },
  config = function(_, opts)
    require("gruvbox").setup(opts)
    vim.cmd("colorscheme gruvbox")
  end,
}

return M
