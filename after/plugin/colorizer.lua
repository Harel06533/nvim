local status, colorizer = pcall(require, "colorizer")
if not status then
  print("colorizer missing")
  return
end

colorizer.setup()
