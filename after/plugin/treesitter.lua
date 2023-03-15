--Parsers for languages
local status, ts = pcall(require, 'nvim-treesitter.configs')
if not status then 
  print('Treesitter not found')
  return
end


ts.setup({
  ensure_installed = {"c", "cpp", "lua", "java", "html", "css", "javascript"},
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    disable = {},
  },

  autotag = {
    enable = true,
    disable = {},
  }
})
