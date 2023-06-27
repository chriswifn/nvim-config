-- Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.guicursor = ""
vim.opt.cursorline = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.laststatus=0
vim.opt.ruler=true
vim.opt.showmode=true
vim.opt.ruf="%30(%=%#LineNr#%.50F [%{strlen(&ft)?&ft:'none'}] %l:%c %p%%%)"

vim.opt.ignorecase = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.list = true

vim.opt.smartindent = true

-- vim.opt.textwidth = 72
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

-- disable continuation of comments
vim.api.nvim_create_autocmd("BufEnter",
{ callback = function() vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" } end, })
