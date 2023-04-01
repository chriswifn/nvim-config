-- lazy specific and some sane options
require("config.options")
require("config.lazy")

-- be VeryLazy
vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
        require("config.autocmds")
        require("config.keymaps")
    end,
})
