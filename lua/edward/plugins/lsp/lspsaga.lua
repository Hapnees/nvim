local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	finder = {
		keys = {
			open = "<CR>",
		},
	},
	definition = {
		edit = "<CR>",
	},
	symbol_in_winbar = {
		enable = false, -- disable breadcrumbs
	},
})
