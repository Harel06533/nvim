local status, packer = pcall(require, 'packer')
if not status then
  print("Packer was not found, exit code -1")
  return
end

packer.startup(function(use)
  --Packer can manage itself
  use 'wbthomason/packer.nvim'

  --Color theme
  use 'ellisonleao/gruvbox.nvim'
  --Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  --Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() vim.fn["mkdp#util#install"]() end
  }

  --Lua status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  }

  --Auto complete pairs
  use 'windwp/nvim-autopairs'

  --Lspconfig
  use 'neovim/nvim-lspconfig'

  --Lsp related plugins
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'

  use 'L3MON4D3/LuaSnip'

  use 'jose-elias-alvarez/null-ls.nvim'

  use 'MunifTanjim/prettier.nvim'
end)
