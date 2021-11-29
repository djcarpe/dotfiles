local map = vim.api.nvim_set_keymap
opts = { noremap = true, silent = true }

-- Leader
map("n",  "<Space>",  "<NOP>", opts)
vim.g.mapleader = " "

-- Toggle Highlighting
map("n", "<Leader>h", ":set hlsearch!<CR>", opts)

-- Toggle Tree
map("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<Leader>E", ":NvimTreeFindFile<CR>", opts)

-- FZF configs
map("n", "<Leader>f", ":FZF<CR>", opts)
map("n", "<Leader>rg", ":Rg<CR>", opts)
map("n", "<Leader>ag", ":Ag<CR>", opts)
map("n", "<Leader>li", ":Lines<CR>", opts)
map("n", "<Leader>bl", ":BLines<CR>", opts)
map("n", "<Leader>ma", ":Marks<CR>", opts)

-- Change Color Theme
map("n", "<Leader><Leader>cs", ":colorscheme", opts)
map("n", "<Leader><Leader>gb", ":colorscheme base16-gruvbox-dark-hard<CR>", opts)
map("n", "<Leader><Leader>mn", ":colorscheme monokai<CR>", opts)

-- Buffers
map("n", "gt", ":BufferLineCycleNext<CR>", opts)
map("n", "gT", ":BufferLineCyclePrev<CR>", opts)

-- VGit
map("n", "<leader>gb", "<cmd>VGit buffer_blame_preview<cr>", opts)
map("n", "<leader>gp", "<cmd>VGit buffer_diff_preview<cr>", opts)
map("n", "<leader>gd", "<cmd>VGit project_diff_preview<cr>", opts)
map("n", "<leader>gs", "<cmd>VGit buffer_hunk_stage<cr>", opts)
map("n", "<leader>gh", "<cmd>VGit project_hunks_qf<cr>", opts)

