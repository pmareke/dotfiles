-- Packer
return require('packer').startup(function(use)
  use 'jiangmiao/auto-pairs'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'dense-analysis/ale'
  use 'tpope/vim-commentary'
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use 'fatih/molokai'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
