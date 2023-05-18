-- this is where keymaps are specified that are not linked to a plugin

-- buffer navigation
vim.keymap.set("n", "<leader>bp", ":bprev<cr>")
vim.keymap.set("n", "<leader>bn", ":bnext<cr>")

-- commenting lines
vim.keymap.set("n", "gcc", "!! filter comment comment<cr>")
vim.keymap.set("v", "gcc", "! filter comment comment<cr>")
vim.keymap.set("n", "gcu", "!! filter comment uncomment<cr>")
vim.keymap.set("v", "gcu", "! filter comment uncomment<cr>")

-- find character
vim.keymap.set("n", ",,", ":keepp /<++><cr>ca<")

-- tmux_sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux_sessionizer<cr>")

-- copy and paste (system clipboard)
vim.keymap.set("n", "<leader>p", [["+p]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- move things around in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- center cursor when jumping with C-d and C-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- move cursor when going through search list
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- ease of use
vim.keymap.set("n", "gO", "<cmd>!xdg-open <cfile><CR>", { silent = true })
vim.keymap.set("n", "<leader>ii", "<cmd>:pu=strftime('%Y%m%dT%H%M%S')<CR>", { silent = true })
