return {
  'saghen/blink.cmp',
  event = 'VimEnter',
  version = '1.*',
  dependencies = {
    {
      'L3MON4D3/LuaSnip',
      version = '2.*',
      build = (function()
        if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
          return
        end
        return 'make install_jsregexp'
      end)(),
      dependencies = {
      },
      opts = {},
    },
    'folke/lazydev.nvim',
  },
  config = function()
    require("blink.cmp").setup{

      opts = {
        keymap = {
          preset = 'default',
        },

        appearance = {
          nerd_font_variant = 'mono',
        },

        completion = {
          -- <c-space> for documentation
          documentation = { auto_show = false, auto_show_delay_ms = 500 },
        },

        sources = {
          default = { 'lsp', 'path', 'snippets', 'lazydev' },
          providers = {
            lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
          },
        },

        snippets = { preset = 'luasnip' },

        fuzzy = { implementation = 'lua' },

        signature = { enabled = true },
      },
    }
  end,
  --- @module 'blink.cmp'
  --- @type blink.cmp.Config
}
