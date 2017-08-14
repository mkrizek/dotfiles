" Plugins:
" ale
" ansible-vim
" ctrlp.vim
" jedi-vim
" nerdtree
" nerdtree-git-plugin
" vim-airline
" vim-fugitive

execute pathogen#infect()

set nocompatible

set background=dark
syntax enable
let python_highlight_all=1

:set colorcolumn=100
:highlight ColorColumn ctermbg=235

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list


set autowrite
set clipboard=unnamed
set confirm


set tabstop=4       " number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set smarttab
set smartindent


set wildignore=*.o,*~,*.pyc " ignore compiled files
set number          " show line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line
filetype on
filetype plugin indent on  " load filetype-specific indent files
set wildmenu        " visual autocomplete for command menu
set lazyredraw      " redraw only when we need to.
set showmatch       " highlight matching [{()}]


set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set ignorecase      " ignore case when searching
set smartcase       " when searching try to be smart about cases
nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight


" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>


nnoremap <leader>p oimport pdb; pdb.set_trace()<Esc>
nnoremap <leader>e oimport epdb; epdb.serve()<Esc>
nnoremap <leader>q oimport q; q(<Esc>

" delete trailing white space on save
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

set nojoinspaces

let g:jedi#use_tabs_not_buffers = 1


" python3 from powerline.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup
" set laststatus=2
" set t_Co=256


" NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

" airline
let g:airline#extensions#ale#enabled = 1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

nmap <F8> :TagbarToggle<CR>
