vim.o.termguicolors = true
vim.opt.colorcolumn = ""
vim.g.mapleader = " "
vim.g.copilot_no_tab_map = true
vim.opt_local.columns = 80
vim.o.clipboard = "unnamedplus"
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.relativenumber = true
vim.o.guifont = "FiraCode Nerd Font Mono:h15"

if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0.05
  vim.g.neovide_scroll_animation_length = 0.01
end

vim.o.winbar = "%{%v:lua.require'custom.winbar'.get_winbar()%}"

