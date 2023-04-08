local M = {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    opts = {
        show_current_context = true,
        show_current_context_start = true,
    },
    config = function (_,opts)
        require("indent_blankline").setup(opts)
    end
}

return M
