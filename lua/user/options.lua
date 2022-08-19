vim.opt.number = true
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
vim.opt.cul = true
vim.opt.swapfile = false
vim.g.mapleader = " "
vim.g.webdevicons_enable = 1

vim.cmd [[syntax on]]
vim.cmd [[colorscheme github_dark_default]]

vim.diagnostic.config({
  signs = true,
  underline = false,
  update_in_insert = true,
  severity_sort = false,
  virtual_text = { spacing = 4, prefix = "●" },
})

vim.cmd [[
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END
]]

