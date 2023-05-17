local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local key = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Press jk fast to enter
key("i", "jk", "<Escape>")

-- Resize with arrows
key("n", "<C-Up>", ":resize -2<CR>", opts)
key("n", "<C-Down>", ":resize +2<CR>", opts)
key("n", "<C-Left>", ":vertical resize -2<CR>", opts)
key("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Better window navigation
key("n", "<C-l>", "<C-w>l", opts)
key("n", "<C-h>", "<C-w>h", opts)
key("n", "<C-j>", "<C-w>j", opts)
key("n", "<C-k>", "<C-w>k", opts)

-- Navigate buffers
key("n", "<S-l>", ":bnext<CR>", opts)
key("n", "<S-h>", ":bprev<CR>", opts)

-- Stay in indent mode
key("v", "<", "<gv", opts)
key("v", ">", ">gv", opts)

-- Move text up and down
key("v", "<A-j>", ":m +1<CR>==", opts)
key("v", "<A-k>", ":m -1<CR>==", opts)

-- Explorer
key("n", "<leader>e", ":Neotree float reveal=true<CR>", opts)
key("n", "<leader>ge", ":Neotree float git_status<CR>", opts)

-- Telescope
key("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
key("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
key("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
key("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
key("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

-- Bufferline
key("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>")
key("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>")
key("n", "<leader>c", "<cmd>bd<CR>")
