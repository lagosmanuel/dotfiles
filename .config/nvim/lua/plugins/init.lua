-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require('plugins.netrw')
require('plugins.lsp')
require('plugins.localvimrc')
require('plugins.tmux')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'Townk/vim-autoclose'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'
  use 'dense-analysis/ale'
  use 'mattn/emmet-vim'
  use 'vimwiki/vimwiki'
  use 'junegunn/vim-easy-align'
  use 'christoomey/vim-tmux-navigator'
  use 'embear/vim-localvimrc'
  use 'altercation/vim-colors-solarized'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
