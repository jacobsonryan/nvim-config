vim.g.mapleader = " "

-- Skip ts_context_commentstring module warning
vim.g.skip_ts_context_commentstring_module = true

-- Display
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.background = "dark"
vim.opt.guicursor = "a:ver25"
vim.opt.fillchars = {
  horiz = "━",
  horizup = "┻",
  horizdown = "┳",
  vert = "│",
  vertleft = "┫",
  vertright = "┣",
  verthoriz = "╋",
  fold = " ",
  eob = " ",
  msgsep = "‾",
}

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true

-- Search
vim.opt.hlsearch = false

-- Behavior
vim.opt.mouse = ""
vim.opt.swapfile = false
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.laststatus = 3

-- Filetype overrides
vim.filetype.add({
  extension = {
    ejs = "html",
  },
})
