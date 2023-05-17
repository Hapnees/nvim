local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

ts.setup({
	ensure_installed = { "typescript", "tsx", "javascript", "css", "html", "json", "dockerfile", "gitignore" },
	auto_install = true,
	sync_install = false,
	highlight = {
		enable = true,
	},
	autotag = { enable = true },
})
