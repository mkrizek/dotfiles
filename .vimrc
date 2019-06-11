" Plugins - ale, ansible-vim, jedi

let g:ale_enabled = 0
let g:ale_python_flake8_executable = 'flake8-2'
nmap <leader>c :ALEToggle<CR>

let g:ansible_unindent_after_newline = 1
let g:ansible_yamlKeyName = 'yamlKey'
let g:ansible_attribute_highlight = "ob"
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1
let g:ansible_normal_keywords_highlight = 'Constant'
let g:ansible_with_keywords_highlight = 'Constant'

set nocompatible

syntax on
set background=dark
set t_Co=256
set t_ut=

set encoding=utf-8

set wildignore=*.o,*~,*.pyc                         " ignore compiled files
set showcmd                                         " show command in bottom bar
set cursorline                                      " highlight current line
set wildmenu                                        " visual autocomplete for command menu
set lazyredraw                                      " redraw only when we need to.
set showmatch                                       " highlight matching [{()}]
set list                                            " display whitespaces
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<


set path+=**                                        " :find works recursively


set autowrite
set clipboard=unnamed
set confirm


filetype on
filetype plugin indent on                           " load filetype-specific indent files
set tabstop=4                                       " number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4                                   " number of spaces in tab when editing
set expandtab                                       " tabs are spaces
set smarttab
set smartindent
set nojoinspaces


set incsearch                                       " search as characters are entered
set hlsearch                                        " highlight matches
set ignorecase                                      " ignore case when searching
set smartcase                                       " when searching try to be smart about cases
nnoremap <leader><space> :nohlsearch<CR>            " turn off search highlight


set laststatus=2                                    " always show window info
set statusline+=%m                                  " modified
set statusline+=%r                                  " readonly
set statusline+=%h                                  " helpstatus
set statusline+=%w                                  " preview
set statusline+=%f                                  " relative filepath
set statusline+=%=                                  " left/right sep
set statusline+=%y                                  " file type
set statusline+=\ %p%%                              " percent
set statusline+=\ %l:%c                             " line:col


" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>


nnoremap <leader>e oimport epdb; epdb.st()<Esc>
nnoremap <leader>er oimport epdb; epdb.serve()<Esc>
nnoremap <leader>eu oimport pudb; pudb.set_trace()<Esc>
nnoremap <leader>p oimport pdb; pdb.set_trace()<Esc>
nnoremap <leader>q oimport q; q(<Esc>

set pastetoggle=<F3>

" delete trailing white space on save
autocmd FileType py,yml,yaml autocmd BufWritePre <buffer> %s/\s\+$//e

autocmd FileType yaml setlocal ai ts=2 sw=2 et
