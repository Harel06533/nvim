local status, aupairs = pcall(require, "nvim-autopairs")
if not status then
  print("autopairs missing")
  return
end

aupairs.setup({})
