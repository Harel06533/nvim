local keymap = vim.keymap
vim.g.mapleader = " "

--Explore
keymap.set("n", "<leader>pv", vim.cmd.Ex)

--nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--store
keymap.set("n", "<leader>w", vim.cmd.write)
