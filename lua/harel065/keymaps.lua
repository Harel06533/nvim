local keymap = vim.keymap
vim.g.mapleader = " "

--Explore
keymap.set("n", "<leader>pv", vim.cmd.Ex)

--nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

--store
keymap.set("n", "<leader>w", vim.cmd.write)
