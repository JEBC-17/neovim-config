if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

  Plug 'olimorris/onedarkpro.nvim'
  Plug 'tpope/vim-fugitive'
  Plug 'sainnhe/sonokai'
  Plug 'tpope/vim-rhubarb'
  Plug 'catppuccin/nvim', {'as': 'catppuccin'}
  Plug 'tpope/vim-commentary'
  Plug 'kyoz/purify', { 'rtp': 'vim' }
  Plug 'haya14busa/vim-easymotion'
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'morhetz/gruvbox'
  Plug 'alvan/vim-closetag'
  Plug 'folke/zen-mode.nvim'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'tami5/lspsaga.nvim'
  Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
  Plug 'folke/lsp-colors.nvim'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'mhinz/vim-startify'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'groenewege/vim-less', { 'for': 'less' }
  Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

call plug#end()
