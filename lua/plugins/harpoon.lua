local M = {
    "ThePrimeagen/harpoon",
    event = "BufReadPre",
    keys = {
        { "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "[H]arpoon [A]dd File" },
        { "<leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "[H]arpoon [M]enu" },
        { "<leader>hh", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "[H]arpoon [1]" },
        { "<leader>hj", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "[H]arpoon [2]" },
        { "<leader>hk", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "[H]arpoon [3]" },
        { "<leader>hl", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "[H]arpoon [4]" },
        { "<leader>hf", "<cmd>lua require('telescope').extensions.harpoon.marks{}<cr>", desc = "[F]ind [H]arpoon Mark"}
    },
    config = function()
        require("harpoon").setup()
        require("telescope").load_extension("harpoon")
    end,
}

return M
