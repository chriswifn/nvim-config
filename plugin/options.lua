local opt = vim.opt

opt.inccommand = "split"

opt.cmdheight = 0

opt.smartcase = true
opt.ignorecase = true

opt.laststatus = 3

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.cursorline = true

opt.smartindent = true

opt.splitbelow = true
opt.splitright = true

opt.signcolumn = "yes"
opt.clipboard = "unnamedplus"

opt.wrap = false
opt.linebreak = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

opt.termguicolors = true

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 8
opt.isfname:append("@-@")

vim.opt.fillchars = {eob = " "}

local statusline = {
  ' %t',
  '%r',
  '%m',
  '%=',
  '%{&filetype}',
  ' %2p%%',
  ' %3l:%-2c '
}

vim.o.statusline = table.concat(statusline, '')
