set nocompatible
syntax on
set autowrite
set confirm
set number
set background=dark
set tabstop=4
set shiftwidth=4
set smartindent
set expandtab
set nojoinspaces
set clipboard=unnamed

map <C-t> :tabnew<CR>
map <C-n> :tabn<CR>
map <C-p> :tabp<CR>

colorscheme smyck

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor
