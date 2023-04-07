local M = {
    "ahmedkhalf/project.nvim",
    event = "BufReadPre",
    keys = {
        { "<leader>fp", "<cmd>lua require('telescope').extensions.projects.projects{}<cr>", desc = "[F]ind [P]rojects" },
    },
    opts = {
        exclude_dirs = { "~/Downloads", "~/Desktop" },
        detection_methods = { "pattern", "lsp" },
        patterns = { ".git", ".projectile", "Makefile", "package.json" },
        ignore_lsp = {},
        silent_chdir = false,
    },
    config = function(_, opts)
        require("project_nvim").setup(opts)
        require("telescope").load_extension("projects")
    end,
}

return M
