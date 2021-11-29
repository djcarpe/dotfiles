require("plugins")
require("key_mappings")

-- Global Options
vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.syntax = "on"
vim.o.completeopt = "menuone,noselect"
vim.o.number = true
vim.o.relativenumber = true

-- Local to Buffer
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

-- vim commands
vim.cmd([[colorscheme base16-eighties]])

vim.cmd[[highlight CursorLine term=bold cterm=bold guibg=Grey40]]

vim.cmd([[
    augroup fmt
        autocmd!
	autocmd BufWritePre * undojoin | Neoformat
    augroup END
]])
