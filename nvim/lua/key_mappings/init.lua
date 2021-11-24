local map = vim.api.nvim_set_keymap
opts = { noremap = true, silent = true }

map("n",  "<Space>",  "<NOP>", opts)
vim.g.mapleader = " "


---- Interface
-- Toggle Highlighting
map("n", "<Leader>h", ":set hlsearch!<CR>", opts)
-- Toggle Lexplore
map("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)
-- FZF configs
map("n", "<Leader>f", ":FZF<CR>", opts)
map("n", "<Leader>rg", ":Rg<CR>", opts)
map("n", "<Leader>ag", ":Ag<CR>", opts)
-- map("n", "", "", opts)
-- Change Color Theme
map("n", "<Leader><Leader>cs", ":colorscheme", opts)
map("n", "<Leader><Leader>gb", ":colorscheme base16-gruvbox-dark-hard<CR>", opts)
map("n", "<Leader><Leader>mn", ":colorscheme monokai<CR>", opts)
-- map("n", "", "", opts)

