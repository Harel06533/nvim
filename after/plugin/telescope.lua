--Fuzzyfinder for neovim
local status, builtin = pcall(require, "telescope.builtin")
if not status then 
  print("telescope builtin not found")
  return 
end

vim.keymap.set('n', '<leader>th', builtin.find_files, {})
vim.keymap.set('n', '<leader>gi', builtin.live_grep, {})
