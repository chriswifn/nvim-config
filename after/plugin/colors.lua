local config = require("gruvbox").config
require("gruvbox").setup({
  italic = false,
  contrast = "hard",
  overrides = {
    StatusLine = { fg = "#282828" },
    StatusLineNC = { fg = "#282828" },
    CursorLine = { bg = "#282828" },
    CursorLineNr = { bg = "#282828" },
    SignColumn = { bg = "#1d2021"},
    GruvboxRedSign = { fg = "#cc241d", bg = "#1d2021", reverse = config.invert_signs },
    GruvboxGreenSign = { fg = "#98971a", bg = "#1d2021", reverse = config.invert_signs },
    GruvboxYellowSign = { fg = "#d79921", bg = "#1d2021", reverse = config.invert_signs },
    GruvboxBlueSign = { fg = "#458588", bg = "#1d2021", reverse = config.invert_signs },
    GruvboxPurpleSign = { fg = "#b16286", bg = "#1d2021", reverse = config.invert_signs },
    GruvboxAquaSign = { fg = "#689d6a", bg = "#1d2021", reverse = config.invert_signs },
    GruvboxOrangeSign = { fg = "#fe8019", bg = "#1d2021", reverse = config.invert_signs },
  },
})
vim.cmd[[autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE]]
vim.cmd[[colorscheme gruvbox]]

