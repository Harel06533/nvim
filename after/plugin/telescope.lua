local status, builtin = pcall(require, "telescope.builtin")
if not status then
  print("telescope.builtin missing")
  return 
end
vim.keymap.set("n", "<leader>th", builtin.find_files)
vim.keymap.set("n", "<leader>gf", builtin.git_files)