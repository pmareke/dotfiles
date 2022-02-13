call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-projectionist'
  Plug 'sheerun/vim-polyglot'
  Plug 'godlygeek/tabular'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'editorconfig/editorconfig-vim'
  Plug 'dense-analysis/ale'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'chriskempson/base16-vim'
  Plug 'Yggdroot/indentLine'
  Plug 'tpope/vim-rails'
  Plug 'davidhalter/jedi-vim'
  Plug 'vim-test/vim-test'
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
let g:fzf_layout = { 'down': '100%' }
let $FZF_DEFAULT_OPTS .= ' --margin=0,1 --preview "bat --style=numbers,changes --wrap never --color always {} || cat {} || tree -C {}"'

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
let g:ale_fix_on_save = 1
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setColors = 0
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1
let g:ale_linters = { 'python': ['pyright', 'flake8', 'pylint'] }
let g:ale_fixers = { 'python': ['yapf'] }

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
let base16colorspace=256
colorscheme base16-default-dark
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
endif

let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
set termguicolors

" YAML
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" IndentLine
let g:indentLine_char = '⦙'

" CoC
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <leader>rn <Plug>(coc-rename)
command! -nargs=0 Format :call CocActionAsync('format')
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" VimTest
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :A<CR>
let test#strategy = "kitty"
let test#python#runner = 'pytest'
let g:test#echo_command = 0
let test#python#pytest#options = '-x'

augroup test
  autocmd!
  autocmd BufWrite * if test#exists() |
    \   TestFile |
    \ endif
augroup END

" Vim Projectionist
let g:projectionist_heuristics = {
	      \   '*': {
	      \     '*_test.py': {
	      \       'alternate': '{}.py',
	      \       'type': 'model'
	      \     },
	      \     '*.py': {
	      \       'alternate': '{}_test.py',
	      \       'type': 'test'
	      \     }
	      \   }
	      \ }

