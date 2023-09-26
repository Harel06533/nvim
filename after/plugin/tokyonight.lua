local status, everforest = pcall(require, "tokyonight")
if not status then
  print("tokyonight missing")
  return
end

everforest.setup();
vim.cmd [[colorscheme tokyonight]]
