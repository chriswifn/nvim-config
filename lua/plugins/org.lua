local M = {
    "nvim-orgmode/orgmode",
    event = "BufReadPre",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
        org_agenda_files = { "~/media/org/*" },
        org_default_notes_file = "~/media/org/refile.org",
    },
    config = function(_,opts)
        require("orgmode").setup_ts_grammar()
        require("orgmode").setup(opts)
    end
}

return M