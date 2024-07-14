call plug#begin()

" List your plugins here
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'jupyter-vim/jupyter-vim'
Plug 'sheerun/vim-polyglot'
Plug 'rhysd/vim-clang-format'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'itchyny/lightline.vim'

call plug#end()

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set guifont=FiraCode\ Nerd\ Font\ Mono:h11

colorscheme challenger_deep
let g:lightline = { 'colorscheme': 'challenger_deep'}

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nmap <F8> :TagbarToggle<CR>

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

" Remap ; to : in Normal Mode
nnoremap ; :
vnoremap ; :

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

highlight Comment guifg=#FFD700 ctermfg=White
highlight Normal guibg=#00000000

" dd only deletes the line without copying
nnoremap dd "_dd

" Set the Alt key as the leader key
let mapleader = "\<M-Space>"

" leader + e to exit insert mode
inoremap <leader>e <Esc>

" Disable trailing spaces indicator
let g:airline#extensions#whitespace#enabled = 0

" Disable mixed indentfile indicator
let g:airline#extensions#tabline#enabled = 0

" Open NERDTree on the right side
let g:NERDTreeWinPos = "right"

