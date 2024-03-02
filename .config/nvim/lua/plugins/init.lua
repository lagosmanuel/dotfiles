-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}
  use {'Townk/vim-autoclose'}
  use {'tpope/vim-surround'}
  use {'tpope/vim-fugitive'}
  use {'dense-analysis/ale'}
  use {'mattn/emmet-vim'}
  use {'vimwiki/vimwiki'}
  use {'junegunn/vim-easy-align'}
  use {'christoomey/vim-tmux-navigator', config = [[ require('plugins.tmux') ]]}
  use {'embear/vim-localvimrc', config = [[ require('plugins.localvimrc') ]]}
  use {'altercation/vim-colors-solarized'}
  use {'williamboman/mason.nvim'}
  use {'williamboman/mason-lspconfig.nvim'}
  use {'neovim/nvim-lspconfig', config = [[ require('plugins.lsp') ]]}
  use {'nvim-telescope/telescope.nvim', tag = '0.1.5', requires = {{'nvim-lua/plenary.nvim'}}}

  config = [[require('plugins.netrw')]]
end)
