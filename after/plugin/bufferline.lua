local status, buffline = pcall(require, "bufferline")
if not status then
  print("bufferline missing")
  return
end

buffline.setup()

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
