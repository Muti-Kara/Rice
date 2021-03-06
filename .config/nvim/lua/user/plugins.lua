local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

return packer.startup(function(use)

	use "wbthomason/packer.nvim"
	use "nvim-lua/plenary.nvim"
	use "nvim-lua/popup.nvim"
	use "voldikss/vim-floaterm"
	use "nvim-lualine/lualine.nvim"
	use "tpope/vim-commentary"
	use "Mofiqul/dracula.nvim"
	
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-cmdline"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-nvim-lua"
	use "saadparwaiz1/cmp_luasnip"

	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets"
	
	use "neovim/nvim-lspconfig"
	use "williamboman/nvim-lsp-installer"
	use "tamago324/nlsp-settings.nvim"
	
	use "nvim-telescope/telescope.nvim"
	use "gbrlsnchs/telescope-lsp-handlers.nvim"
	
	use "nvim-treesitter/nvim-treesitter"
	
	use "jupyter-vim/jupyter-vim"
	
	use "tpope/vim-dadbod"
	use "kristijanhusak/vim-dadbod-ui"
	
	if PACKER_BOOTSTRAP then
	require("packer").sync()
	end
end)
