local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- general
map('n', '<leader><esc>', '<cmd>nohlsearch<CR>')
map('n', '<leader>p', '<cmd>lcd %:p:h<CR>')
map('t', '<Esc>', '<C-\\><C-n>')

-- splits
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
map('n', '<C-Left>', '<cmd>vertical resize -3<CR>')
map('n', '<C-Right>', '<cmd>vertical resize +3<CR>')
map('n', '<C-Up>', '<cmd>resize -3<CR>')
map('n', '<C-Down>', '<cmd>resize +3<CR>')
map('n', '<leader>tt', '<cmd>split term://bash <CR>')

-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files hidden=true<CR>')
map('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>')
map('n', '<leader>ld', '<cmd>Telescope diagnostics<CR>')
map('n', '<leader>fc', '<cmd>Telescope colorscheme<CR>')

-- buffers
map('n', '<leader>bn', '<cmd>bNext<CR>')
map('n', '<leader>bp', '<cmd>bprevious<CR>')
map('n', '<leader>bk', '<cmd>bdelete<CR>')
map('n', '<leader>ee', '<cmd>Explore<CR>')
