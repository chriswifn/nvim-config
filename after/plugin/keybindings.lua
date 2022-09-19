local Remap = require("chris.keymap")
local nnoremap = Remap.nnoremap

-- general
nnoremap('<leader><esc>', '<cmd>nohlsearch<CR>')
nnoremap('<leader>p', '<cmd>lcd %:p:h<CR>')

-- splits
nnoremap('<C-h>', '<C-w>h')
nnoremap('<C-j>', '<C-w>j')
nnoremap('<C-k>', '<C-w>k')
nnoremap('<C-l>', '<C-w>l')
nnoremap('<C-Left>', '<cmd>vertical resize -3<CR>')
nnoremap('<C-Right>', '<cmd>vertical resize +3<CR>')
nnoremap('<C-Up>', '<cmd>resize -3<CR>')
nnoremap('<C-Down>', '<cmd>resize +3<CR>')
nnoremap('<leader>tt', '<cmd>split term://bash <CR>')

-- improve C-d and C-u
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- Telescope
nnoremap('<leader>ff', '<cmd>Telescope find_files hidden=true<CR>')
nnoremap('<leader>fr', '<cmd>Telescope oldfiles<CR>')
nnoremap('<leader>fg', '<cmd>Telescope live_grep<CR>')
nnoremap('<leader>fb', '<cmd>Telescope buffers<CR>')
nnoremap('<leader>ld', '<cmd>Telescope diagnostics<CR>')
nnoremap('<leader>fc', '<cmd>Telescope colorscheme<CR>')

-- buffers
nnoremap('<leader>bn', '<cmd>bNext<CR>')
nnoremap('<leader>bp', '<cmd>bprevious<CR>')
nnoremap('<leader>bk', '<cmd>bdelete<CR>')
nnoremap('<leader>ee', '<cmd>Explore<CR>')
