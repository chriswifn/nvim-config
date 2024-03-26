-- telescope
local M = {
  "nvim-telescope/telescope.nvim",
  event = "BufReadPre",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "nvim-telescope/telescope-ui-select.nvim" },
    { "nvim-lua/plenary.nvim" },
  },
  keys = {
    { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>",  desc = "[F]ind [F]iles" },
    { "<leader>fr", "<cmd>lua require('telescope.builtin').oldfiles()<cr>",    desc = "[F]ind [R]ecent" },
    { "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>",   desc = "[F]ind [H]elp" },
    { "<leader>fw", "<cmd>lua require('telescope.builtin').grep_string()<cr>", desc = "[F]ind [W]ord" },
    { "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>",   desc = "[F]ind with [G]rep" },
    {
      "<leader>fd",
      "<cmd>lua require('telescope.builtin').diagnostics()<cr>",
      desc =
      "[F]ind [D]iagnostics"
    },
    { "<leader>bb", "<cmd>lua require('telescope.builtin').buffers()<cr>", desc = "[B]uffer [B]rowse" },
    {
      "<leader>/",
      "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>",
      desc =
      "[/] Fuzzily search in current buffer"
    },
  },
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    telescope.load_extension("fzf")
    telescope.load_extension("ui-select")
  end,
}

return M
