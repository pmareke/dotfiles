call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis/ale'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'github/copilot.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Mofiqul/vscode.nvim'
call plug#end()

" Config
let mapleader=","
set autoindent
set autowrite
set backspace=indent,eol,start
set encoding=utf-8
set fillchars+=vert:┃
set foldlevelstart=20
set foldmethod=indent
set history=1000
set laststatus=1
set nocompatible
set noshowmode
set noswapfile
set nowrap
set number
set numberwidth=4
set relativenumber
set showmatch
set tags=tags
set textwidth=80
set undodir=~/.vim/undodir
set undofile
set wildmenu

" Keymaps
map <leader>I :PlugInstall<CR>
map <leader>C :PlugClean<CR>
map <leader>w :w<CR>
map <leader>wq :wq<CR>
map <leader>q :q!<CR>
map <leader>r :so %<Enter>
map <leader>x :close<CR>
map <leader>v :vsplit<CR>
map <leader>h :split<CR>
map <leader>c :bd<CR>
map <leader>n :bnext<CR>
map <space> za
imap jj <esc>
imap kk <esc>
nmap k gk
nmap j gj
cnoremap <expr> <CR> getcmdtype() == '/' ? '<CR>zz' : '<CR>'
nnoremap <CR> :noh<CR><CR>
nnoremap <silent> vv <C-w>v
nnoremap <silent> hh <C-w>s
nnoremap B ^
nnoremap E $
nnoremap gV `[v`]
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Colors
filetype plugin indent on

" Color Column
set colorcolumn=80
hi clear SignColumn
highlight ColorColumn ctermbg=0 guibg=darkgrey
highlight Folded cterm=reverse ctermbg=0 ctermfg=8
highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8
highlight ExtraWhitespace ctermbg=1
highlight DiffAdd ctermfg=green cterm=bold
highlight DiffDelete ctermfg=red cterm=bold
highlight DiffChange ctermfg=yellow
highlight Folded ctermbg=red
match ExtraWhitespace /\s\+$/

" FZF
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :FZF<CR>
nnoremap <silent> <Leader>f :Ag<CR>
let g:fzf_layout = { 'down': '30%' }
let $FZF_DEFAULT_OPTS .= ' --border --margin=0,2'

" Commentary
autocmd FileType apache setlocal commentstring=#\ %s

" Ctlr-P
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" ALE
highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#272727
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#EDBC37 guibg=#272727
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = "◉"
let g:ale_sign_warning = "◉"
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setColors = 0
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
map gd :ALEGoToDefinition<CR>

" VimGo
let g:go_def_mapping_enabled = 0
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave_enabled = ['all']
autocmd FileType go nmap <leader>a  <Plug>(go-alternate-edit)
autocmd FileType go nmap <leader>d  <Plug>(go-def)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>T  <Plug>(go-test-func)
autocmd FileType go nmap <leader>re  <Plug>(go-rename)
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" VimFugitive
hi DiffAdd gui=NONE guifg=green guibg=default
hi DiffDelete gui=NONE guifg=green guibg=default
hi DiffChange gui=NONE guifg=green guibg=default
hi DiffText gui=NONE guifg=green guibg=default
hi Folded guibg=default guifg=white
hi FoldColumn guibg=default guifg=white
hi Pmenu guibg=default guifg=white
hi PmenuSel guibg=default guifg=grey
hi NonText guibg=default guifg=white
hi Statusline guifg=#262626 guibg=white
set laststatus=2
set statusline=%f 
set statusline+=%=%{FugitiveStatusline()}

set background=dark
let g:vscode_style = "dark"
colorscheme vscode
let g:airline_powerline_fonts = 1
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  endif
endif
