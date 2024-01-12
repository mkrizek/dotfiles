syntax on
set background=dark
colorscheme evening

set autoread
set confirm
set cursorline
set encoding=utf-8
set hlsearch
set ignorecase
set incsearch
set path+=**  " :find works recursively
set scrolloff=5
set showcmd
set showmatch
set smartcase
set ruler
set title
set wildignore=*.o,*~,*.pyc
set wildmenu

nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>l :bnext<CR>
nmap <leader><space> :nohlsearch<CR>

nmap <leader>e oimport epdb; epdb.st()<Esc>
nmap <leader>q oimport q; q(<Esc>

filetype on
filetype plugin indent on
autocmd FileType python setlocal expandtab smartindent tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType sh setlocal expandtab smartindent tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType yaml setlocal expandtab autoindent tabstop=2 shiftwidth=2
