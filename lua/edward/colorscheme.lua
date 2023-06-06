vim.cmd("colorscheme kanagawa-dragon")

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "none", fg = "Red" })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "none", fg = "Orange" })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { bg = "none", fg = "Blue" })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = "none", fg = "Gray" })

vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "FoldColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "none" })
vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "none" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "none" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = "#625e5a" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
