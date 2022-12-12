return require('packer').startup(function()
	-- Package manager
	use 'wbthomason/packer.nvim'

	-- Colorscheme
  use 'ellisonleao/gruvbox.nvim'

  -- Colorizer
  use "NvChad/nvim-colorizer.lua"

	-- Lualine 
  use 'nvim-lualine/lualine.nvim'

	-- Treesitter
	use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

	-- Devicons
  use 'kyazdani42/nvim-web-devicons'

	-- LSP 
	use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Autocomplete
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-path'
	use 'L3MON4D3/LuaSnip'
	use 'onsails/lspkind.nvim'

	-- NvimTree
	use 'kyazdani42/nvim-tree.lua'

	-- Autopairs & Autotag
	use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Commenting
  use 'terrortylor/nvim-comment'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Github Integration
  use 'tpope/vim-fugitive'

end)
