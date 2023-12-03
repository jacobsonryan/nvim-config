vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.laststatus = 3
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.scrolloff = 10
vim.opt.hlsearch = false
vim.opt.encoding = "UTF-8"
vim.opt.background = "dark"
vim.opt.wrap = false
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.signcolumn = "yes"
vim.opt.cul = false
vim.opt.swapfile = false
vim.g.mapleader = " "
vim.g.webdevicons_enable = 1
vim.g.skip_ts_context_commentstring_module = true
vim.opt.mouse = ""
vim.g.everforest_dim_inactive_windows = 0
vim.g.everforest_transparent_background = 1

vim.cmd [[set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾]]
vim.cmd [[syntax on]]
vim.cmd [[colorscheme everforest]]
vim.cmd [[set guicursor=i:block]]

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight SignColumn guibg=none
  highlight LineNr guibg=none
]]

vim.cmd [[
  au BufNewFile,BufRead *.ejs set filetype=html
]]


