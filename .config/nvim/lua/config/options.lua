vim.g.mapleader = ','
vim.g.maplocalleader = ','
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- trigger `autoread` when files changes on disk
vim.cmd([[
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
  autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
  autocmd FileType gitcommit setlocal textwidth=200
]])

local options = {
  autoindent = true, -- copy indent from current line
  syntax = "on",
  encoding = "utf-8",
  incsearch = true,                        -- make search act like search in modern browsers
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 2,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  laststatus = 1,
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 0,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 100,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  breakindent = true,                      -- wrap lines with indent
  number = true,
  relativenumber = true,                   -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  scrolloff = 8,                           -- Makes sure there are always eight lines of context
  sidescrolloff = 8,                       -- Makes sure there are always eight lines of context
  title = true,                            -- set the title of window to the value of the titlestring
  confirm = true,                          -- confirm to save changes before exiting modified buffer
  fillchars = { eob = " " },               -- change the character at the end of buffer
  foldenable = false,
  foldlevelstart = 20,
  foldmethod = "indent",
  showcmd = true,
  ruler = true,
  winheight = 38,
}

vim.wo.wrap = false

for k, v in pairs(options) do
  vim.opt[k] = v
end
