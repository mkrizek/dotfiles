syntax on
set background=dark

colorscheme darcula

set autoread
set confirm
set cursorline
set encoding=utf-8
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:\│\ ,trail:~
set nojoinspaces
set path+=**  " :find works recursively
set pastetoggle=<F3>
set showcmd
set showmatch
set smartcase
set statusline+=%m%r%h%w%f%=%y\ %p%%\ %l:%c
set title
set wildignore=*.o,*~,*.pyc
set wildmenu

nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>e oimport epdb; epdb.st()<Esc>
nmap <leader>h :bprevious<CR>
nmap <leader>l :bnext<CR>
nmap <leader>q oimport q; q(<Esc>
nmap <leader><space> :nohlsearch<CR>

filetype on
filetype plugin indent on
autocmd FileType python setlocal expandtab smartindent tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType sh setlocal expandtab smartindent tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType yaml setlocal expandtab autoindent tabstop=2 shiftwidth=2

let g:ale_enabled = 0
nmap <leader>c :ALEToggle<CR>
