-- lsp
local M = {
  "neovim/nvim-lspconfig",
  event = "BufReadPre",
  config = function()
    -- turn off virtual text because it is annoying
    vim.diagnostic.config({ virtual_text = false })

    -- lsp
    local nvim_lsp = require('lspconfig')
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    if vim.fn.executable('gopls') == 1 then
      nvim_lsp.gopls.setup({
        capabilities = capabilities,
      })
    end
  end
}

return M
