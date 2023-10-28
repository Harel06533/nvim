local status, builtin = pcall(require, "telescope.builtin")
if not status then
  print("telescope.builtin missing")
  return
end
vim.keymap.set("n", "<leader>th", builtin.find_files)
vim.keymap.set("n", "<leader>gf", builtin.git_files)

require("telescope").load_extension("file_browser")

-- opens file browser in the current working directory
vim.api.nvim_set_keymap("n", "<leader>tt", ":Telescope file_browser<CR>", { noremap = true })

-- open file browser from the current buffer
vim.api.nvim_set_keymap(
  "n",
  "<leader>tu",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true, silent = true }
)
