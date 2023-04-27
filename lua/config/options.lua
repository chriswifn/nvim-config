-- Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.guicursor = ""

vim.opt.nu = false
vim.opt.relativenumber = false

vim.opt.ignorecase = true

-- vim.opt.clipboard = 'unnamedplus'

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.list = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

-- disable continuation of comments
vim.api.nvim_create_autocmd("BufEnter",
{ callback = function() vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" } end, })

-- statusline
vim.opt.laststatus = 0
