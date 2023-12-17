:set number
:set autoindent
:set tabstop=4
:set expandtab
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
set clipboard=unnamedplus "to copy paste from vim to other system clipboard
:set cursorline
:set cursorcolumn
:set splitright
:set splitbelow
:set smartindent
set encoding=UTF-8

#for the colors of highlighting and text
#this sets the color scheme
set termguicolors
colorscheme nova

call plug#begin()

Plug 'junegunn/fzf',{'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
call plug#end()

" For opening Fuzzy finder
nnoremap <C-p> :Files <CR>
" For ALE Hover
nnoremap <C-h> :ALEHover<CR>


" For selecting a block and moving it using tabs
vnoremap < <gv
vnoremap > >gv

let g:ale_python_auto_virtualenv = 1
let g:ale_python_flake8_auto_pipenv = 1
let g:ale_linters = {'cpp': ['clangd'],'javascriptreact': ['eslint'], 'yaml': ['yamllint'], 'python': ['jedils','pylint']}
let g:ale_fixers = {'cpp': ['astyle'],'javascriptreact': ['prettier'],'yaml': ['yamlfix'], '*': [ 'remove_trailing_lines', 'remove_trailing_lines','trim_whitespace'], 'python': ['black']}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_floating_preview = 1

"Import locations
" /usr/share/nvim/   (colors is in runtime)
" /.config/nvim/
" .local/share/nvim/
