local M = {
    "nvim-neorg/neorg",
    event = "BufReadPre",
    build = ":Neorg sync-parsers",
    opts = {
        load = {
            ["core.defaults"] = {}, -- Loads default behaviour
            ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
            ["core.norg.dirman"] = { -- Manages Neorg workspaces
                config = {
                    workspaces = {
                        work = "~/notes/work",
                        home = "~/notes/home",
                        wiki = "~/notes/wiki",
                        university = "~/notes/university",
                    },
                },
            },
        },
    },
    dependencies = { { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" } },
    config = function(_, opts)
        require("neorg").setup(opts)
    end
}

return M
