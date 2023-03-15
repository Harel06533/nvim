local status, mason = pcall(require, "mason")
if not status then
  print("mason not loaded")
  return
end

local configStatus, mason_lsp = pcall(require, "mason-lspconfig")
if not configStatus then
  print('mason-lspconfig not loaded')
  return
end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

mason_lsp.setup({
  automatic_installatiion = true
})
