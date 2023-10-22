local status, conform = pcall(require, "conform")
if not status then
	print("conform missing")
end

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "preittier", "prettierd" },
		typescript = { "preittier", "prettierd" },
		javascriptreact = { "preittier", "prettierd" },
		typescriptreact = { "preittier", "prettierd" },
		css = { "preittier", "prettierd" },
		html = { "preittier", "prettierd" },
		json = { "preittier", "prettierd" },
		yaml = { "preittier", "prettierd" },
		markdown = { "preittier", "prettierd" },
		python = { "isort", "black" },
	},
	format_on_save = {
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	},
})
