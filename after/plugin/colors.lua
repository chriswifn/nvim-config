-- require("tokyonight").setup({
--     style = "moon",
--     light_style = "day",
--     transparent = true,
--     terminal_colors = true,
--     styles = {
--         comments = { italic = false },
--         keywords = { bold = true },
--         functions = { bold = true },
--         variables = {},
--         sidebars = "dark",
--         floats = "dark",
--     },
--     sidebars = { "qf", "help" },
--     -- day_brightness = 0.3,
--     hide_inactive_statusline = false,
--     dim_inactive = false,
--     lualine_bold = false,
--
--     on_colors = function(colors) end,
--
--     on_highlights = function(highlights, colors) end,
-- })
--
-- vim.o.background = "dark"
-- vim.cmd.colorscheme("tokyonight")
--
-- function ColorMyPencils()
--     vim.cmd("source ~/.config/nvim/after/plugin/colors.lua")
-- end

vim.o.background = "dark"

require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})
vim.cmd("colorscheme gruvbox")
