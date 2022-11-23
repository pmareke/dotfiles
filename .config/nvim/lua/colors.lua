-- Colors
local set = vim.opt
set.termguicolors = true
set.colorcolumn="80"
vim.cmd[[colorscheme molokai]]
vim.cmd[[hi clear SignColumn]]
vim.cmd[[highlight ColorColumn ctermbg=0 ctermfg=8]]
vim.cmd[[highlight Folded cterm=reverse ctermbg=0 ctermfg=8]]
vim.cmd[[highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8]]
vim.cmd[[highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8]]
vim.cmd[[highlight ExtraWhitespace ctermbg=1]]
vim.cmd[[highlight DiffAdd ctermfg=green cterm=bold]]
vim.cmd[[highlight DiffDelete ctermfg=red cterm=bold]]
vim.cmd[[highlight DiffChange ctermfg=yellow]]
vim.cmd[[highlight Folded ctermbg=red]]
vim.cmd[[highlight Pmenu ctermbg=gray guibg=#1b1d1e]]
vim.cmd[[highlight PmenuSel ctermbg=gray guibg=#1b1d1e guifg=#FFFFF guifg=#FFFFFFF guifg=#FFFFFF]]
vim.cmd[[highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#202020]]
vim.cmd[[highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#EDBC37 guibg=#202020]]
vim.cmd[[match ExtraWhitespace /\s\+$/]]
