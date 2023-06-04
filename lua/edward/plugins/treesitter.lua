local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

ts.setup({
	ensure_installed = {
		"typescript",
		"tsx",
		"javascript",
		"css",
		"html",
		"json",
		"dockerfile",
		"gitignore",
		"markdown",
		"markdown_inline",
	},
	auto_install = true,
	sync_install = false,
	highlight = {
		enable = true,
	},
	autotag = { enable = true },
	indent = { enable = true },
})
