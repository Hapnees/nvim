local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local packer_bootstrap = ensure_packer()

local status, packer = pcall(require, "packer")
if not status then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	-- Colorscheme
	use("bluz71/vim-nightfly-colors")
	use("rebelot/kanagawa.nvim")

	-- Neotree explorer
	use({ "nvim-neo-tree/neo-tree.nvim", branch = "v2.x" })
	use("MunifTanjim/nui.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- LSP
	use("neovim/nvim-lspconfig")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("onsails/lspkind.nvim")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("hrsh7th/cmp-nvim-lsp")

	-- LSP typescript
	use("jose-elias-alvarez/typescript.nvim")

	-- Autocomplete
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- Comments
	use("numToStr/Comment.nvim")

	-- Icons
	use("kyazdani42/nvim-web-devicons")

	-- Status line
	use("nvim-lualine/lualine.nvim")

	-- Telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- formatting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- Auto closing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- Git
	use("lewis6991/gitsigns.nvim")

	-- Bufferline
	use({ "akinsho/bufferline.nvim", tag = "*" })

	-- Colorizer
	use("norcalli/nvim-colorizer.lua")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
