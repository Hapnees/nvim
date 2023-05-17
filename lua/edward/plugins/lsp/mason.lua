local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

local mason_lsp_status, mason_lsp = pcall(require, "mason-lspconfig")
if not mason_lsp_status then
	return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

mason.setup()

mason_lsp.setup({
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
	},
})

mason_null_ls.setup({
	ensure_installed = {
		"prettierd",
		"stylua",
	},
})
