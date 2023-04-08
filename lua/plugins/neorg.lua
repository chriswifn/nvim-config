local M = {
    "nvim-neorg/neorg",
    event = "BufReadPre",
    build = ":Neorg sync-parsers",
    opts = {
        load = {
            ["core.defaults"] = {},
            ["core.norg.concealer"] = {
                config = {
                    icon_preset = "diamond",
                }
            },
            ["core.keybinds"] = {
                config = {
                    default_keybindings = true,
                    hook = function(keybinds)
                        keybinds.remap_key("traverse-heading", "n", "k", "<M-k>")
                    end,
                }
            },
            ["core.norg.dirman"] = { -- Manages Neorg workspaces
                config = {
                    workspaces = {
                        main = "~/notes",
                        work = "~/notes/work",
                        wiki = "~/notes/wiki",
                        university = "~/notes/university",
                    },
                    autochdir = false,
                    default_workspace = "main",
                },
            },
            ["core.integrations.treesitter"] = {},
            ["core.presenter"] = {
                config = {
                    zen_mode = "truezen",
                }
            },
            ["core.norg.journal"] = {},
            ["core.export"] = {},
            ["core.export.markdown"] = {
                config = {
                    extensions = "all",
                }
            },
        },
    },
    dependencies = { { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter", "nvim-neorg/neorg-telescope", "Pocco81/true-zen.nvim" } },
    config = function(_, opts)
        require("neorg").setup(opts)
        require("telescope").load_extension("neorg")
        require("true-zen").setup()
    end
}

return M
