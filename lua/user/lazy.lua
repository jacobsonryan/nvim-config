local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
  -- Colorscheme
  'sainnhe/everforest',
  'sainnhe/gruvbox-material',

  -- Idk
 'eandrju/cellular-automaton.nvim',

  -- Colorizer
  'NvChad/nvim-colorizer.lua',

  -- Lualine
  'nvim-lualine/lualine.nvim',

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  },

  -- Devicons
  -- 'kyazdani42/nvim-web-devicons',
  'nvim-tree/nvim-web-devicons',

  -- LSP
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'jose-elias-alvarez/null-ls.nvim',
  'MunifTanjim/eslint.nvim',

  -- Autocomplete
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-path',
   {
     "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
    require("luasnip").config.set_config {
        history = true,
    }
    end
  },
  'saadparwaiz1/cmp_luasnip',
  'onsails/lspkind.nvim',

  -- NvimTree
  'kyazdani42/nvim-tree.lua',

  -- Autopairs & Autotag
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
  'ur4ltz/surround.nvim',
  {
    "lukas-reineke/indent-blankline.nvim",
    version = "2.20.8",
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-live-grep-args.nvim' },
  },
  'nvim-telescope/telescope-fzy-native.nvim',
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- Commenting
  'terrortylor/nvim-comment',
  'JoosepAlviste/nvim-ts-context-commentstring',

  -- Github Integration
  'tpope/vim-fugitive',
})
