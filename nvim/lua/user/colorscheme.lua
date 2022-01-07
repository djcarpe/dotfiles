vim.cmd [[
try
  set termguicolors
  colorscheme darkplus 
  set background=dark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
