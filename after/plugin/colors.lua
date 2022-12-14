require("tokyonight").setup({
    style = "moon",
    light_style = "day",
    transparent = true,
    terminal_colors = true,
    styles = {
        comments = { italic = false },
        keywords = { bold = true },
        functions = { bold = true },
        variables = {},
        sidebars = "dark",
        floats = "dark",
    },
    sidebars = { "qf", "help" },
    -- day_brightness = 0.3,
    hide_inactive_statusline = false,
    dim_inactive = false,
    lualine_bold = false,

    on_colors = function(colors) end,

    on_highlights = function(highlights, colors) end,
})

vim.o.background = "dark"
vim.cmd.colorscheme("tokyonight")

function ColorMyPencils()
    vim.cmd("source ~/.config/nvim/after/plugin/colors.lua")
end
