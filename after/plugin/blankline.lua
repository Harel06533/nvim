local status, ibl = pcall(require, "ibl");
if not status then
  print("ibl missing")
  return
end

ibl.setup();
