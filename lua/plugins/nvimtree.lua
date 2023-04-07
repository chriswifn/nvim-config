local M = {
    "nvim-tree/nvim-tree.lua",
    event = "BufReadPre",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    keys = {
        { "<leader>tf", ":NvimTreeToggle<cr>", desc = "[T]oggle [F]ile-manager" }
    },
    opts = {
        sort_by = "case_sensitive",
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        }
    },
    config = function(_, opts)
        require("nvim-tree").setup(opts)
    end
}

return M
