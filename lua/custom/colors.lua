require("modus-themes").setup({
	-- Theme comes in two styles `modus_operandi` and `modus_vivendi`
	-- `auto` will automatically set style based on background set with vim.o.background
	style = "auto",
	variant = "default", -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
	transparent = true, -- Transparent background (as supported by the terminal)
	dim_inactive = false, -- "non-current" windows are dimmed
	hide_inactive_statusline = false, -- Hide statuslines on inactive windows. Works with the standard **StatusLine**, **LuaLine** and **mini.statusline**
	line_nr_column_background = false, -- Distinct background colors in line number column. `false` will disable background color and fallback to Normal background
	sign_column_background = false, -- Distinct background colors in sign column. `false` will disable background color and fallback to Normal background
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		keywords = { bold = true },
		functions = { bold = true },
	},

	--- You can override specific color groups to use other groups or a hex color
	--- Function will be called with a ColorScheme table
	--- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the ColorScheme table
	---@param colors ColorScheme
	on_colors = function(colors) end,

	--- You can override specific highlights to use other groups or a hex color
	--- Function will be called with a Highlights and ColorScheme table
	--- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the Highlights and ColorScheme table
	---@param highlights Highlights
	---@param colors ColorScheme
    on_highlights = function(highlight, color)
      highlight.Comment = { fg = color.yellow_cooler } -- Change Boolean highlight to use the green color
      highlight.String = { fg = color.green_cooler }
      -- highlight.StatusLine = { bg = color.bg_main }
    end,
})

local theme_file = vim.fn.expand("~/.config/active-theme")

-- Function to apply the theme based on file content
local function apply_theme()
  local mode = vim.fn.readfile(theme_file)[1]
  if mode == "light" then
    vim.o.background = "light"
    vim.cmd("colorscheme modus")
  else
    vim.o.background = "dark"
    vim.cmd("colorscheme modus")
  end
end

-- Call it once on startup
apply_theme()

-- Set up file watcher
local uv = vim.loop
local fs_event = uv.new_fs_event()
fs_event:start(theme_file, {}, vim.schedule_wrap(function()
  apply_theme()
end))
