" bundles
call pathogen#runtime_append_all_bundles() 

filetype plugin on
filetype plugin indent on

colorscheme elflord

set noic
set softtabstop=4
set expandtab
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set nobackup
set noswapfile
set pastetoggle=<F2>
set nocompatible

" snipmates for django
" python and html are mostly django
autocmd FileType python set ft=python.django
autocmd FileType html set ft=htmldjango.html

" toggle NERDTree
map <F4> :NERDTreeToggle<CR>

"toggle Taglist
map <F3> :TlistToggle<CR>

" toggle fugitive status
map <silent><leader>s :Gstatus<CR>
" toggle fugitive diff
map <silent><leader>d :Gdiff<CR>

" Hide python cache files (.pyc) in NERDTree
let NERDTreeIgnore=['\.pyc']

" insert newline but dont enter insert mode
map <Enter> o<Esc>k

" python ctags 
set tags+=$HOME/.vim/tags/python.ctags

" autocompletion
autocmd FileType python set omnifunc=pythoncomplete#Complete

" tabbing
map <silent><A-Right> :tabnext<CR> 
map <silent><A-Left> :tabprevious<CR>
map <silent><C-x> :tabclose<CR>

" auto nerd tree
autocmd VimEnter * NERDTree

" clear search highlight
nnoremap <leader><space> :noh<cr>

" clipboard
set clipboard=unnamed

" shortcuts
inoremap jj <ESC>
nnoremap ; :

" vimango
"let vimango_app_prefix = 'apps/'
let vimango_template_prefix = 'templates/'
