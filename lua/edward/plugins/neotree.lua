vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

 vim.fn.sign_define("DiagnosticSignError",
    {text = " ", texthl = "DiagnosticSignError"})
  vim.fn.sign_define("DiagnosticSignWarn",
    {text = " ", texthl = "DiagnosticSignWarn"})
  vim.fn.sign_define("DiagnosticSignInfo",
    {text = " ", texthl = "DiagnosticSignInfo"})
  vim.fn.sign_define("DiagnosticSignHint",
    {text = "", texthl = "DiagnosticSignHint"})

local status, neotree = pcall(require, "neo-tree")
if not status then
  return
end

neotree.setup({
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
})

