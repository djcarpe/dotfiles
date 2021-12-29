local map = vim.api.nvim_set_keymap
opts = { noremap = true, silent = true }

-- leader
map("n",  "<Space>",  "<NOP>", opts)
vim.g.mapleader = " "

-- Toggle Highlighting
map("n", "<leader>h", ":set hlsearch!<CR>", opts)

-- Toggle Tree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>E", ":NvimTreeFindFile<CR>", opts)

-- FZF configs
map("n", "<leader>f", ":FZF<CR>", opts)
map("n", "<leader>rg", ":Rg<CR>", opts)
map("n", "<leader>ag", ":Ag<CR>", opts)
map("n", "<leader>li", ":Lines<CR>", opts)
map("n", "<leader>b", ":BLines<CR>", opts)
map("n", "<leader>ma", ":Marks<CR>", opts)

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)

-- Change Color Theme
map("n", "<leader><leader>cs", ":colorscheme", opts)
map("n", "<leader><leader>gb", ":colorscheme base16-gruvbox-dark-hard<CR>", opts)
map("n", "<leader><leader>mn", ":colorscheme monokai<CR>", opts)

-- Buffers
map("n", "gt", ":bnext<CR>", opts)
map("n", "gT", ":bprevious<CR>", opts)

-- VGit
map("n", "<leader>gb", "<cmd>VGit buffer_blame_preview<cr>", opts)
map("n", "<leader>gp", "<cmd>VGit buffer_diff_preview<cr>", opts)
map("n", "<leader>gd", "<cmd>VGit project_diff_preview<cr>", opts)
map("n", "<leader>gs", "<cmd>VGit buffer_hunk_stage<cr>", opts)
map("n", "<leader>gh", "<cmd>VGit project_hunks_qf<cr>", opts)

-- search box
map("n", "<leader>s", "<cmd>lua require('searchbox').incsearch()<cr>", opts)
map("n", "<leader>r", "<cmd>lua require('searchbox').replace({confirm = 'menu'})<cr>", opts)
