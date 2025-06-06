local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
map('n', 'gA', '<cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gr', ':Telescope lsp_references<CR>', opts)
map('n', 'gs', ':Telescope grep_string<CR>', opts)
map('n', 'gu', ':Telescope lsp_incoming_calls<CR>', opts)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)

map("n", ":", "<cmd>FineCmdline<CR>", opts)
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)
map("n", "<Leader>w", ":write!<CR>", opts)
map("n", "<Leader>q", ":q!<CR>", opts)
map("n", "<Leader>x", ":wq<CR>", opts)
map("n", "<Leader>c", ":bd<CR>", opts)
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
map("v", "<", "<gv")
map("v", ">", ">gv")
map("v", "p", '"_dp')
map("v", "P", '"_dP')
map("n", "YY", "va{Vy", opts)
map("n", "j", "gj", opts)
map("n", "k", "gk", opts)
map("i", "jj", "<ESC>", opts)
map("i", "jk", "<ESC>", opts)
map({ 'n', 'x', 'o' }, 'H', '^', opts)
map({ 'n', 'x', 'o' }, 'L', '$', opts)
map("n", "<Right>", ":bnext<CR>", opts)
map("n", "<Left>", ":bprevious<CR>", opts)
map("n", "+", ":vertical resize +5<CR>")
map("n", "_", ":vertical resize -5<CR>")
map("n", "=", ":resize +5<CR>")
map("n", "-", ":resize -5<CR>")
map("n", "<CR>", "ciw", opts)
map("n", "<BS>", 'ci', opts)
map("n", "<C-P>", ":Telescope find_files<CR>", opts)
map('n', 'X', ':keeppatterns substitute/\\s*\\%#\\s*/\\r/e <bar> normal! ==^<cr>', { silent = true })
map('n', '<C-a>', 'ggVG', opts)
map('n', '<C-n>', ':w %:h/', opts)
map('n', '<space>', 'za', opts)
map('i', '<C-j>', '<ESC>:m .+1<CR>==gi', opts)
map('i', '<C-k>', '<ESC>:m .-2<CR>==gi', opts)
map('n', '<C-j>', ':m .+1<CR>==', opts)
map('n', '<C-k>', ':m .-2<CR>==', opts)
map('v', "<C-j>", ":m '>+1<CR>gv=gv", opts)
map('v', "<C-k>", ":m '<-2<CR>gv=gv", opts)
map('n', '<Up>', '<Nop>', opts)
map('n', '<Down>', '<Nop>', opts)
map('n', '<Left>', '<Nop>', opts)
map('n', '<Right>', '<Nop>', opts)
