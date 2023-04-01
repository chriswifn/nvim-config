-- undotree
local M = {
    "mbbill/undotree",
    event = "BufReadPre",
    keys = {
        { "<leader>u", vim.cmd.UndotreeToggle, desc = "[U]ndo Tree"},
    },
}

return M
