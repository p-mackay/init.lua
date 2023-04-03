set exrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes
set clipboard=unnamedplus
set autoindent
set indentexpr=

"Set the terminal window's name to current file.
set title
augroup WindowTitleGroup
    autocmd!
    autocmd BufEnter,BufFilePost * let &titlestring = expand('%:t')
augroup end

"Syntax Hightlighting
"Octave syntax
"augroup filetypedetect
"    au! BufRead,BufNewFile *.m,*.oct set filetype=octave 
"    "setlocal indentexpr=GetMatlabIndent()
"    "au! BufRead,BufNewFile *.m,*.oct setlocal indentexpr=GetMatlabIndent() 
"augroup END

nnoremap <SPACE> <Nop>
let mapleader = " "

call plug#begin('~/.vim/plugged')
"Plug 'McSinyx/vim-octave'
Plug 'mikea1729/octave.vim'
Plug 'ThePrimeagen/vim-be-good'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
"Plug 'xiyaowong/nvim-transparent' 
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do': { -> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

colorscheme gruvbox
highlight Normal ctermfg=grey ctermbg=darkblue
"highlight Normal guibg=none
let g:transparent_enabled = v:false
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

"Keeping it centered
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ'z
"undo
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap [ [<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
"
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==


