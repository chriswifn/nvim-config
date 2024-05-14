-- local M = {
-- 	"ellisonleao/gruvbox.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.opt.background = "dark"
-- 		require("gruvbox").setup({
-- 			terminal_colors = true, -- add neovim terminal colors
-- 			undercurl = false,
-- 			underline = false,
-- 			bold = true,
-- 			italic = {
-- 				strings = false,
-- 				emphasis = false,
-- 				comments = false,
-- 				operators = false,
-- 				folds = false,
-- 			},
-- 			strikethrough = false,
-- 			invert_selection = false,
-- 			invert_signs = false,
-- 			invert_tabline = false,
-- 			invert_intend_guides = false,
-- 			inverse = true, -- invert background for search, diffs, statuslines and errors
-- 			--contrast = "soft", -- can be "hard", "soft" or empty string
-- 			palette_overrides = {
-- 				dark0_hard = "#282828",
-- 			},
-- 			overrides = { SignColumn = { bg = "#282828" }, StatusLine = { fg = "#282828" } },
-- 			dim_inactive = false,
-- 			transparent_mode = false,
-- 		})
-- 		vim.cmd([[colorscheme gruvbox]])
-- 	end,
-- }
-- 
-- return M

-- local M = {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = function()
--     return {
--       style = "night",
--       hide_inactive_statusline = true,
--       transparent = true,
--       styles = {
--         keywords = { bold = true },
--         functions = { bold = true },
--       },
--     }
--   end,
--   config = function(_, opts)
--     vim.o.background = "dark"
--     local tokyonight = require("tokyonight")
--     tokyonight.setup(opts)
--     tokyonight.load()
--   end,
-- }
-- 
-- return M

local M = {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function(_, opts)
    vim.g.gruvbox_material_better_performance = 1
    vim.g.gruvbox_material_enable_bold = 1
    vim.g.gruvbox_material_transparent_background = 1
    vim.cmd("colorscheme gruvbox-material")
  end
}

return M
