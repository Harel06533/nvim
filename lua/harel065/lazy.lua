local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

local status, lazy = pcall(require, "lazy")
if not status then
  print("lazy pm missing")
  return
end

local plugins = {
  -- colorscheme
  { "rose-pine/neovim",            name = "rose-pine" },

  -- autoclosing parenthesis and quotes
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },

  -- colorizer for hex colors
  { "norcalli/nvim-colorizer.lua", opts = {} },

  -- telescope related
  {
    "nvim-telescope/telescope.nvim", -- telescope base
    version = "0.1.3",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim", -- telescope for browsing files and current buffer directory
  },

  { "nvim-tree/nvim-tree.lua" },    -- file tree
  { "nvim-lualine/lualine.nvim" },  -- status line and bufferline
  { "nvim-tree/nvim-web-devicons" }, -- webdev icons

  -- treesitter for syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
    end,
  },
  { "windwp/nvim-ts-autotag" }, -- auto closing tags in html, javascript, react

  -- lsp
  { "neovim/nvim-lspconfig" },  -- LSP neovim
  { "williamboman/mason.nvim" }, -- Package manager for lsp servers
  { "onsails/lspkind-nvim" },   -- Pictograms for lsp
  { "nvimdev/lspsaga.nvim" },

  -- lsp autocompletion
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/nvim-cmp" },

  -- snippets
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
  },

  -- indent line
  { "lukas-reineke/indent-blankline.nvim" },

  -- formatting and linting (migration to conform.nvim and nvim-lint)
  { "stevearc/conform.nvim" },
  --{"mfussenegger/nvim-lint"}

  -- git integration with buffers
  { "lewis6991/gitsigns.nvim" },
}

lazy.setup(plugins)
