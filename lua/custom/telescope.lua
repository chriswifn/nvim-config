local data = assert(vim.fn.stdpath "data")

require("telescope").setup {
  extensions = {
    wrap_results = true,
    fzf = {},
    history = {
      path = vim.fs.joinpath(data, "telescope_history_sqlite3"),
      limit = 100,
    },
    ["ui-select"] = {},
  },

  defaults = {}
}

pcall(require("telescope").load_extension, "fzf")

pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "smart_history")
pcall(require("telescope").load_extension, "ui-select")

local builtin = require "telescope.builtin"

vim.keymap.set("n", "<space>ff", builtin.find_files, {desc = "[F]ind [F]iles"})
vim.keymap.set("n", "<space>ft", builtin.git_files, {desc = "[F]ind [T]racked"})
vim.keymap.set("n", "<space>fh", builtin.help_tags, {desc = "[F]ind [H]elp"})
vim.keymap.set("n", "<space>fg", builtin.live_grep, {desc = "[F]ind using [G]rep"})
vim.keymap.set("n", "<space>fe", builtin.diagnostics, {desc = "[F]ind [E]rrors"})
vim.keymap.set("n", "<space>/", builtin.current_buffer_fuzzy_find, {desc = "Search Buffer"})

vim.keymap.set("n", "<space>gw", builtin.grep_string, {desc = "[G]rep [W]ord"})

vim.keymap.set("n", "<space>fa", function()
    ---@diagnostic disable-next-line: param-type-mismatch
    builtin.find_files { cwd = vim.fs.joinpath(vim.fn.stdpath "data", "lazy") }
end)

vim.keymap.set("n", "<space>en", function()
    builtin.find_files { cwd = vim.fn.stdpath "config"}
end, { desc = "[E]dit [N]eovim" })

vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>s", builtin.oldfiles, { desc = "[Search] Recent Files" })
