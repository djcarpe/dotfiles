vim.cmd [[
try
  set termguicolors
  colorscheme one-monokai
  set background=dark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
