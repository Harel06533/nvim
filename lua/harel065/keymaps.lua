local keymap = vim.keymap
vim.g.mapleader = " "

--Explore
keymap.set("n", "<leader>pv", vim.cmd.Ex)

--nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

--store
keymap.set("n", "<leader>w", vim.cmd.write)

-- prettier format
keymap.set("n", "<leader>f", ":Prettier<CR>", { noremap = true, silent = true })

-- copy and paste to the system clipboard
keymap.set({ "n", "v" }, "<leader>y", '"+y')
keymap.set({ "n", "v" }, "<leader>p", '"+p')

-- close current opened buffer
keymap.set("n", "<leader>qb", vim.cmd.bdelete);
