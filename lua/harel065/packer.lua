local status, packer = pcall(require, "packer")
if not status then
  print("packer missing")
  return
end

packer.startup(function(use)
  use "wbthomason/packer.nvim"

  -- colorscheme
  use "folke/tokyonight.nvim"

  -- auto closing parens and quotes
  use "windwp/nvim-autopairs"

  -- colors for hex or rgb
  use "norcalli/nvim-colorizer.lua"

  -- lookups
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.3",
    requires = { { "nvim-lua/plenary.nvim" } }
  }
  use "nvim-telescope/telescope-file-browser.nvim"
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"

  -- status-line (lualine)
  use "nvim-lualine/lualine.nvim"

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use "windwp/nvim-ts-autotag"

  --lsp related
  use "neovim/nvim-lspconfig"   -- LSP neovim
  use "williamboman/mason.nvim" -- Package manager for lsp servers
  use "onsails/lspkind-nvim"    -- Pictograms for lsp
  use "nvimdev/lspsaga.nvim"

  -- lsp autocompletion
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/nvim-cmp"

  -- snippets
  use {
    "L3MON4D3/LuaSnip",
    tag = "v2.*",
    run = "make install_jsregexp"
  }

  -- tabline
  use {
    "akinsho/bufferline.nvim",
    tag = "*",
  }

  -- indent line
  use "lukas-reineke/indent-blankline.nvim"

  -- formatting and linting (using null-ls for the moment)
  use "jose-elias-alvarez/null-ls.nvim" -- deprecated, change asap
  use "MunifTanjim/prettier.nvim"

  -- git integration with buffers
  use "lewis6991/gitsigns.nvim"
end)
