-- this is where keymaps are specified that are not linked to a plugin

-- buffer navigation
vim.keymap.set("n", "<leader>bp", ":bprev")
vim.keymap.set("n", "<leader>bn", ":bnext")

-- tmux_sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux_sessionizer<cr>")
