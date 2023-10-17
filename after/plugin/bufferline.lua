local status, buffline = pcall(require, "bufferline")
if not status then
  print("bufferline missing")
  return
end

buffline.setup {
  options = {
    mode = "buffers",
    separator_style = "slant",
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#191c29',
      bg = '#191c29'
    },
    separator_selected = {
      fg = '#191c29'
    },
    background = {
      fg = '#464a5d',
      bg = '#191c29'
    },
    buffer_selected = {
      fg = '#2cc3df',
      bold = true,
    },
    fill = {
      bg = '#191c29'
    }
  },
}

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
