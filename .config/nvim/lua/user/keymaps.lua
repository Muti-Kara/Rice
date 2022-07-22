local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local command_opts = { noremap = true }
local map = vim.api.nvim_set_keymap

map("n", "q", "<Nop>", opts)

-- replace & replace all
map("n", "<F11>", "<ESC>yiw:%s/<C-r>\"//g<Left><Left>", command_opts)
map("n", "<F10>", "<ESC>yiw:%s/<C-r>\"//gc<Left><Left><Left>", command_opts)

-- multiple window navigation and resizing
map("n", "vs", ":vs %:p:h/<CR>", opts)
map("n", "hs", ":sp %:p:h/<CR>", opts)
map("n", "<C-Left>", "<C-w>h", opts)
map("n", "<C-Down>", "<C-w>j", opts)
map("n", "<C-Up>", "<C-w>k", opts)
map("n", "<C-Right>", "<C-w>l", opts)
map("n", "<C-k>", ":resize +2<CR>", opts)
map("n", "<C-j>", ":resize -2<CR>", opts)
map("n", "<C-h>", ":vertical resize -2<CR>", opts)
map("n", "<C-l>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
map("n", "<M-l>", ":bnext<CR>", opts)
map("n", "<M-h>", ":bprevious<CR>", opts)

-- disabling auto trim
map("n", "o", "o<Space><BS>", opts)
map("n", "O", "O<Space><BS>", opts)
map("i", "<CR>", "<CR><Space><BS>", opts)

-- visual mode line moving and indentation
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
map("v", "<C-Down>", ":m '>+1<CR>gv", opts)
map("v", "<C-Up>", ":m '<-2<CR>gv", opts)

-- telescope
map("n", "<F12>", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown())<cr>", opts)
map("n", "gd", "<cmd>Telescope coc definitions theme=dropdown<cr>", opts)
map("n", "gi", "<cmd>Telescope coc implementations theme=dropdown<cr>", opts)
map("n", "gr", "<cmd>Telescope coc references theme=dropdown<cr>", opts)
map("n", "wd", "<cmd>Telescope coc diagnostics theme=dropdown<cr>", opts)
map("n", "ws", "<cmd>Telescope coc document_symbols theme=dropdown<cr>", opts)

-- floatterm
map("n", "<F1>", "<cmd>FloatermToggle<CR>", opts)
map("t", "<F1>", "<cmd>FloatermToggle<CR>", opts)
map("t", "<C-Up>", "<cmd>FloatermNew<CR>", opts)
map("t", "<C-Down>", "<cmd>FloatermKill<CR>", opts)
map("t", "<C-Right>", "<cmd>FloatermNext<CR>", opts)
map("t", "<C-Left>", "<cmd>FloatermPrev<CR>", opts)
 
-- jupyter console
map("n", "jc", "<cmd>JupyterConnect<CR>", opts)
map("n", "js", "<cmd>JupyterSendCell<CR>", opts)
map("n", "jl", "<cmd>JupyterSendCell<CR>", opts)
map("n", "jf", "<cmd>JupyterRunFile<CR>", opts)
map("i", "#", "##	", opts)
