-- colorscheme
local M = {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function ()
        vim.cmd("let g:gruvbox_material_foreground = 'original'")
        vim.cmd("let g:gruvbox_material_background = 'hard'")
        vim.cmd("let g:gruvbox_material_better_performance = 1")
        vim.cmd("let g:gruvbox_material_enable_bold = 1")
        vim.cmd("colorscheme gruvbox-material")
    end
}

return M
