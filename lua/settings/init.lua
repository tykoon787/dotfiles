local set = vim.opt

set.expandtab = true
set.smarttab = true
set.shiftwidth = 8
set.tabstop = 8
set.autoindent = true
set.smartindent = true

set.number = true
set.mouse = a
set.hlsearch = true
set.incsearch = true
set.ignorecase= true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.termguicolors = true

set.cursorline = true

set.hidden = true


local M = {}
-- boolify strings!
local toBool = {
  ["1"] = true,
  ["0"] = false,
}


-- Note: `foldcolumn` is not a boolean. You can set other values.
-- I only want to toggle between these two values though.
function M.toggle_fold_col()
  if toBool[vim.api.nvim_win_get_option(0, "foldcolumn")] then
    vim.opt.foldcolumn = "0"
  else
    vim.opt.foldcolumn = "1"
  end

       require "notify"(
    "foldcolumn is set to " .. vim.api.nvim_win_get_option(0, "foldcolumn"),
    "info",
    { title = "Window Option Toggled:" }
  )
end

return M
