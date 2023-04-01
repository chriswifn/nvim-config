-- colorscheme
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
        local tokyonight = require("tokyonight")
        tokyonight.setup(opts)
        tokyonight.load()
    end,
}

return M
