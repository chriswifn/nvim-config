local opt = vim.opt

opt.inccommand = "split"

opt.smartcase = true
opt.ignorecase = true

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.splitbelow = true
opt.splitright = true

opt.signcolumn = "yes"
opt.clipboard = "unnamedplus"

-- Don't have `o` insert a comment
opt.formatoptions:remove "o"

opt.wrap = true
opt.linebreak = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.termguicolors = true

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 8
opt.isfname:append("@-@")

vim.api.nvim_create_autocmd("DiagnosticChanged", {
    callback = function(args)
        vim.diagnostic.setloclist({ open = false })
    end,
})


-- vim.keymap.set("n", "<leader>q", function()
--     vim.diagnostic.setloclist({ open = false }) -- don't open and focus
--     local window = vim.api.nvim_get_current_win()
--     vim.cmd.lwindow()                           -- open+focus loclist if has entries, else close -- this is the magic toggle command
-- end, { buffer = bufnr })


vim.keymap.set("n", "<leader>q", function()
    -- Add diagnostics to the loclist without opening it
    vim.diagnostic.setloclist({ open = false })

    -- Get the current window and cursor position
    local window = vim.api.nvim_get_current_win()
    local cursor_pos = vim.api.nvim_win_get_cursor(window)
    local current_line = cursor_pos[1]

    -- Open and focus the loclist if it has entries, else close it
    vim.cmd.lwindow()

    -- Find the diagnostic on the current line and move the cursor in the loclist
    local loclist = vim.fn.getloclist(0)
    for idx, item in ipairs(loclist) do
        if item.lnum == current_line then
            vim.cmd("lrewind")    -- Go to the first entry to reset the search position
            vim.cmd(idx .. "lne") -- Go to the correct diagnostic entry
            break
        end
    end
end, { buffer = bufnr })
