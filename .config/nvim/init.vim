:set number
:set autoindent
:set tabstop=4
:set expandtab
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
set clipboard=unnamedplus
:set cursorline
:set cursorcolumn
:set splitright
:set splitbelow
call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'junegunn/fzf',{'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
"Dart/Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
set encoding=UTF-8


call plug#end()
" nnoremap <A-f> :NERDTreeFocus<CR>
nnoremap <A-n> :NERDTree<CR>
nnoremap <A-f> :NERDTreeToggle<CR>
nnoremap <A-t> :TerminalSplit bash <CR>
nnoremap <A-q> :q <CR>
nnoremap <A-w> :w <CR>
nnoremap <C-p> :Files <CR>
vnoremap < <gv
vnoremap > >gv
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
nmap <silent> gd :call CocAction('jumpDefinition', 'tabe')<CR>

:set completeopt-=preview " For No Previews

set termguicolors
set background=dark
colorscheme nova
" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
