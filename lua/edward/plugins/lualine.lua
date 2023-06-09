local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local lualine_nightfly = require("lualine.themes.nightfly")
local lualine_gruvbox = require("lualine.themes.kanagawa")

local new_colors = {
	blue = "#65D1FF",
	green = "#3EFFDC",
	violet = "#FF61EF",
	yellow = "#FFDA7B",
	black = "#000000",
}

lualine_nightfly.normal.a.bg = new_colors.blue
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.violet
lualine_nightfly.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black,
	},
}

lualine_gruvbox.command.a.gui = "bold"
lualine_gruvbox.normal.a.gui = "bold"
lualine_gruvbox.insert.a.gui = "bold"
lualine_gruvbox.visual.a.gui = "bold"

lualine.setup({
	options = {
		theme = lualine_gruvbox,
		component_separators = { left = "", right = "" },
		section_separators = { left = " ", right = " " },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "filename" },
		lualine_c = { "branch", "diff", "diagnostics" },
		lualine_x = { "filetype" },
		lualine_y = { "" },
		lualine_z = { "location" },
	},
})
