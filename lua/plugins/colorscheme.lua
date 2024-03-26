local M = {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.opt.background = "dark"
		require("gruvbox").setup({
			terminal_colors = true, -- add neovim terminal colors
			undercurl = false,
			underline = false,
			bold = true,
			italic = {
				strings = false,
				emphasis = false,
				comments = false,
				operators = false,
				folds = false,
			},
			strikethrough = false,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			invert_intend_guides = false,
			inverse = true, -- invert background for search, diffs, statuslines and errors
			contrast = "hard", -- can be "hard", "soft" or empty string
			palette_overrides = {
				dark0_hard = "#111111",
			},
			overrides = { SignColumn = { bg = "#111111" }, StatusLine = { fg = "#1a1a1a" } },
			dim_inactive = false,
			transparent_mode = false,
		})
		vim.cmd([[colorscheme gruvbox]])
	end,
}

return M
