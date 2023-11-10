-- lsp
local M = {
  "neovim/nvim-lspconfig",
  event = "BufReadPre",
  config = function()
    -- Switch for controlling whether you want autoformatting.
    --  Use :KickstartFormatToggle to toggle autoformatting on or off
    local format_is_enabled = true
    vim.api.nvim_create_user_command('KickstartFormatToggle', function()
      format_is_enabled = not format_is_enabled
      print('Setting autoformatting to: ' .. tostring(format_is_enabled))
    end, {})

    -- Create an augroup that is used for managing our formatting autocmds.
    --      We need one augroup per client to make sure that multiple clients
    --      can attach to the same buffer without interfering with each other.
    local _augroups = {}
    local get_augroup = function(client)
      if not _augroups[client.id] then
        local group_name = 'kickstart-lsp-format-' .. client.name
        local id = vim.api.nvim_create_augroup(group_name, { clear = true })
        _augroups[client.id] = id
      end

      return _augroups[client.id]
    end

    -- Whenever an LSP attaches to a buffer, we will run this function.
    --
    -- See `:help LspAttach` for more information about this autocmd event.
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('kickstart-lsp-attach-format', { clear = true }),
      -- This is where we attach the autoformatting for reasonable clients
      callback = function(args)
        local client_id = args.data.client_id
        local client = vim.lsp.get_client_by_id(client_id)
        local bufnr = args.buf

        -- Only attach to clients that support document formatting
        if not client.server_capabilities.documentFormattingProvider then
          return
        end

        -- Tsserver usually works poorly. Sorry you work with bad languages
        -- You can remove this line if you know what you're doing :)
        if client.name == 'tsserver' then
          return
        end

        -- Create an autocmd that will run *before* we save the buffer.
        --  Run the formatting command for the LSP that has just attached.
        vim.api.nvim_create_autocmd('BufWritePre', {
          group = get_augroup(client),
          buffer = bufnr,
          callback = function()
            if not format_is_enabled then
              return
            end

            vim.lsp.buf.format {
              async = false,
              filter = function(c)
                return c.id == client.id
              end,
            }
          end,
        })
      end,
    })

    -- turn off virtual text because it is annoying
    vim.diagnostic.config({ virtual_text = false })

    -- lsp
    local nvim_lsp = require('lspconfig')
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    -- golang
    if vim.fn.executable('gopls') == 1 then
      nvim_lsp.gopls.setup({
        capabilities = capabilities,
      })
    end
    -- automatic imports
    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      pattern = "*.go",
      command = "lua vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })"
    })

    -- racket
    if vim.fn.executable('racket') == 1 then
      nvim_lsp.racket_langserver.setup({
        capabilities = capabilities,
      })
    end

    if vim.fn.executable('metals') == 1 then
      nvim_lsp.metals.setup({
        capabilities = capabilities,
      })
    end

    if vim.fn.executable('java-language-server') == 1 then
      nvim_lsp.java_language_server.setup({
        cmd = {'java-language-server'},
        capabilities = capabilities,
      })
    end
  end
}

return M
