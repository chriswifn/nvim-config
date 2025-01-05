local data = assert(vim.fn.stdpath "data")

require("telescope").setup {
    extensions = {
        wrap_results = true,
        fzf = {},
        history = {
            path = vim.fs.joinpath(data, "telescope_history.sqlite3"),
            limit = 100,
        },
        ["ui-select"] = {
        },
    },

    defaults = {
        layout_strategy = "bottom_pane",
        layout_config = {
            height = 0.4,
        },
        border = false,
        sorting_strategy = "ascending",
    },
}


pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "smart_history")
pcall(require("telescope").load_extension, "ui-select")

local builtin = require "telescope.builtin"

vim.keymap.set("n", "<space>ff", builtin.find_files)
vim.keymap.set("n", "<space>ft", builtin.git_files)
vim.keymap.set("n", "<space>fh", builtin.help_tags)
vim.keymap.set("n", "<space>fg", builtin.live_grep)
vim.keymap.set("n", "<space>/", builtin.current_buffer_fuzzy_find)

vim.keymap.set("n", "<space>gw", builtin.grep_string)

vim.keymap.set("n", "<space>fa", function()
    ---@diagnostic disable-next-line: param-type-mismatch
    builtin.find_files { cwd = vim.fs.joinpath(vim.fn.stdpath "data", "lazy") }
end)

vim.keymap.set("n", "<space>en", function()
    builtin.find_files { cwd = vim.fn.stdpath "config" }
end)

vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>s", builtin.oldfiles, { desc = "[Search] Recent Files" })
