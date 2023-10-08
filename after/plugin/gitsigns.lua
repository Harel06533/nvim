local status, gitsigns = pcall(require, "gitsigns")
if not status then
  print("gitsigns missing")
  return
end

gitsigns.setup()
