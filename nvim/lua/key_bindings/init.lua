local map = vim.api.nvim_set_keymap

options = { noremap = true }

map('n',  '<Space>',  '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '


---- Interface
-- Toggle Highlighting
map('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })
-- Toggle Lexplore
map('n', '<Leader>e', ':Lexplore!<CR>', { noremap = true, silent = true })

