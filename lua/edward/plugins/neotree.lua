vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

local status, neotree = pcall(require, "neo-tree")
if not status then
	return
end

neotree.setup({
	popup_border_style = "rounded",
	enable_git_status = true,
	enable_diagnostics = true,

	source_selector = {
		sources = {
			{ source = "filesystem", display_name = " 󰉓 Files " },
			{ source = "git_status", display_name = " 󰊢 Git " },
		},
	},
})
