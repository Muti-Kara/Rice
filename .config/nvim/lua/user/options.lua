local options = {
	backup = false,
	clipboard = "unnamedplus",
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,
	pumheight = 10,
	smartcase = true,
	smartindent = true,
	swapfile = false,
	updatetime = 300,
	writebackup = false,
	expandtab = false,
	shiftwidth = 4,
	tabstop = 4,
	number = true,
	relativenumber = true,
	signcolumn = "number",
	wrap = false,
	scrolloff = 14,
	sidescrolloff = 14,
	splitright = true,
	cursorline = true,
	termguicolors = true,
}

vim.cmd "set whichwrap+=<,>,[,]"
vim.cmd "let g:python_recommended_style = 0"

for k, v in pairs(options) do
	vim.opt[k] = v
end
