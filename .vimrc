" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.6' } 
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"No backup file
set noswapfile

"Line numbers
set number

"Tabs=4
set tabstop=4 
set shiftwidth=4 "The number of chars inserted for indentation
set expandtab   "Tabs to spaces

"Syntax highlight
syntax on

set wildmenu
set noshowmode

"Auto NerdTree
autocmd vimenter * NERDTree
nnoremap <F2> :NERDTree<CR>

"Visual customization
colorscheme gruvbox
set background=dark
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }
let g:gruvbox_termcolors = '256' 

"Paste and nopaste mode
set pastetoggle=<F3>

"Cursor
highlight iCursor guifg=white guibg=steelblue
set guicursor+=i:ver100-iCursor
set guicursor+=i:blinkwait10
"~~~~~~Keybinds~~~~~~
"Tabs
nnoremap <C-L> :tabclose<CR>
