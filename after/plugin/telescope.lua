require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-v>'] = require('telescope.actions.layout').toggle_preview
      }
    },
    preview = {
      hide_on_startup = true
    }
  },
  pickers = {
    find_files = {
      theme = 'ivy'
    },
    buffers = {
      theme = 'ivy'
    },
    diagnostics = {
      theme = 'ivy'
    },
    oldfiles = {
      theme = 'ivy'
    },
    live_grep = {
      theme = 'ivy'
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  }
}

require('telescope').load_extension('fzf')
