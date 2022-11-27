Statusline = {}

local function filetype()
    return string.format(" %s ", vim.bo.filetype):upper()
end

local modes = {
  ["n"] = "[NORMAL]",
  ["no"] = "[NORMAL]",
  ["v"] = "[VISUAL]",
  ["V"] = "[VISUAL LINE]",
  [""] = "[VISUAL BLOCK]",
  ["s"] = "[SELECT]",
  ["S"] = "[SELECT LINE]",
  [""] = "[SELECT BLOCK]",
  ["i"] = "[INSERT]",
  ["ic"] = "[INSERT]",
  ["R"] = "[REPLACE]",
  ["Rv"] = "[VISUAL REPLACE]",
  ["c"] = "[COMMAND]",
  ["cv"] = "[VIM EX]",
  ["ce"] = "[EX]",
  ["r"] = "[PROMPT]",
  ["rm"] = "[MOAR]",
  ["r?"] = "[CONFIRM]",
  ["!"] = "[SHELL]",
  ["t"] = "[TERMINAL]",
}

local function mode()
  local current_mode = vim.api.nvim_get_mode().mode
  return string.format(" %s ", modes[current_mode]):upper()
end

local vcs = function()
  local git_info = vim.b.gitsigns_status_dict
  if not git_info or git_info.head == "" then
    return ""
  end
  local added = git_info.added and (" +" .. git_info.added) or ""
  local changed = git_info.changed and (" ~" .. git_info.changed) or ""
  local removed = git_info.removed and (" -" .. git_info.removed) or ""
  if git_info.added == 0 then
    added = ""
  end
  if git_info.changed == 0 then
    changed = ""
  end
  if git_info.removed == 0 then
    removed = ""
  end
  return table.concat {
     " [",
     git_info.head,
     added,
     changed,
     removed,
     "]"
  }
end

local function lsp()
  local count = {}
  local levels = {
    errors = "Error",
    warnings = "Warn",
    info = "Info",
    hints = "Hint",
  }

  for k, level in pairs(levels) do
    count[k] = vim.tbl_count(vim.diagnostic.get(0, { severity = level }))
  end

  local errors = ""
  local warnings = ""
  local hints = ""
  local info = ""

  if count["errors"] ~= 0 then
    errors = " %#LspDiagnosticsSignError#e:" .. count["errors"]
  end
  if count["warnings"] ~= 0 then
    warnings = " %#LspDiagnosticsSignWarning#w:" .. count["warnings"]
  end
  if count["hints"] ~= 0 then
    hints = " %#LspDiagnosticsSignHint#h:" .. count["hints"]
  end
  if count["info"] ~= 0 then
    info = " %#LspDiagnosticsSignInformation#i:" .. count["info"]
  end

  return errors .. warnings .. hints .. info
end

local function lineinfo()
  if vim.bo.filetype == "alpha" then
    return ""
  end
  return " %P %l:%c "
end

Statusline.active = function()
    return table.concat {
        "%#Statusline#",
        mode(),
        " %F",
        vcs(),
        "%=%#StatusLineExtra#",
        "[",
        lsp(),
        "]",
        lineinfo(),
        filetype(),
    }
end

function Statusline.inactive()
    return " %F"
end

vim.api.nvim_exec([[
  augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
  augroup END
]], false)



