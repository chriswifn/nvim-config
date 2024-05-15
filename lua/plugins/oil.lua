local M = {
  "stevearc/oil.nvim",
  event = "BufReadPre",
  config = function()
    require("oil").setup {
      keymaps = {
        ["<C-h>"] = false,
        ["<M-h>"] = "actions.select_split",
      },
      view_options = {
        show_hidden = true,
      },
    }

    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    vim.keymap.set("n", "<space>-", require("oil").toggle_float)
  end,
}

return M