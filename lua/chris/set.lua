-- guicursor is | we want the block
vim.opt.guicursor = ""

-- numbers and relative numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- clipboard
vim.opt.clipboard = 'unnamedplus'

-- no case sensitive 
vim.opt.ignorecase = true

-- ui
vim.opt.cursorline = true
vim.opt.errorbells = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.cmdheight = 1
vim.opt.updatetime = 50
vim.opt.shortmess:append("c")
vim.g.mapleader = " "

-- swapfile and backup disabled
vim.opt.swapfile = false
vim.opt.backup = false

-- no highlight for search
vim.opt.hlsearch = false
vim.opt.incsearch = true
