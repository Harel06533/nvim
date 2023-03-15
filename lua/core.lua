-- / * BASE CONFIGURATION FOR NEOVIM * / --
vim.cmd("autocmd!")

--Numbers
vim.opt.number = true
vim.opt.relativenumber = true

--Tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

--Smart indent
vim.opt.autoindent = true
vim.opt.smartindent = true

--wrap
vim.opt.wrap = false

--Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Update time
vim.opt.updatetime = 50

--Colors
vim.opt.termguicolors = true

--Cmd 
vim.opt.showcmd = true

--Ignore upper or lower case when in command mode
vim.opt.ignorecase = true


