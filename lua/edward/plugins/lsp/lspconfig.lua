local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

local ts_status, ts = pcall(require, "typescript")
if not ts_status then
	return
end

local key = vim.keymap.set

local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	key("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)
	key("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	key("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
	key("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
	key("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
	key("n", "<leader>ld", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
	key("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
	key("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
	key("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
	key("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

	if client.name == "tsserver" then
		key("n", "<leader>rf", ":TypescriptRenameFile<CR>")
	end
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["html"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig["cssls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig["jsonls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

ts.setup({
	server = {
		on_attach = on_attach,
		capabilities = capabilities,
	},
})

lspconfig["lua_ls"].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
