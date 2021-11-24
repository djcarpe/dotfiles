require('plugins')
require('key_bindings')

-- Globals
vim.cmd([[colorscheme base16-eighties]])
vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.syntax = "on"
vim.o.completeopt = "menuone,noselect"
vim.o.number = true
vim.o.relativenumber = true

vim.cmd([[
    augroup fmt
        autocmd!
	autocmd BufWritePre * undojoin | Neoformat
    augroup END
]])
