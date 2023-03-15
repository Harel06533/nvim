local keymap = vim.keymap
vim.g.mapleader = " "

-- Search with <space>pv
keymap.set("n", "<leader>pf", vim.cmd.Ex) 

--Write
keymap.set("n", "<leader>w", vim.cmd.write)
