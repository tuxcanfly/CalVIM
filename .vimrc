filetype plugin on
filetype plugin indent on


""" ---- Settings ----

set autoindent                                              " always set autoindenting on
set autoread
set autowriteall
set copyindent                                              " copy the previous indentation on autoindenting
set expandtab
set hidden
set hlsearch                                                " highlight search terms
set ignorecase                                              " ignore case when searching
set incsearch                                               " show search matches as you type
set number                                                  " always show line numbers
set shiftround                                              " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                                               " set show matching parenthesis
set smartcase                                               " ignore case if search pattern is all lowercase, case-sensitive otherwise
set nobackup
set nocompatible
set noic
set noswapfile
set nowrap                                                  " don't wrap lines
set softtabstop     =4
set tabstop         =4                                      " a tab is four spaces
set backspace       =indent,eol,start                       " allow backspacing over everything in insert mode
set shiftwidth      =4                                      " number of spaces to use for autoindenting
set pastetoggle     =<F2>
set t_Co            =256
set wildignore      =*.py[co]
set wildmode        =list:longest,list:full
set clipboard       =unnamedplus
set gfn             =Consolas\ for\ Powerline\ 12
set background      =dark
set tags            +=~/.tags/tags
set path            +=templates
set includeexpr     =substitute(v:fname,'\\.','/','g')
set suffixesadd     =.py
set laststatus      =2
set completeopt     =menu
set runtimepath     +=~/.vim/bundle/vundle/
filetype            off
filetype            plugin indent off
set runtimepath     +=/usr/lib/go/misc/vim/
filetype            plugin indent on
syntax              on
call vundle#rc()

colorscheme synic

""" ---- Bundles ------

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-repeat'
Bundle 'bkad/CamelCaseMotion'
Bundle 'matchit.zip'
Bundle 'vim-scripts/trailing-whitespace'
Bundle 'scrooloose/nerdcommenter'
Bundle 'argtextobj.vim'
Bundle 'jamessan/vim-gnupg'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc.vim'
Bundle 'tpope/vim-dispatch'

""" ---- Keybindings ----

" toggle fugitive status
map <silent><leader>s :Gstatus<CR>
" toggle fugitive diff
map <silent><leader>d :Gdiff<CR>
" insert newline but dont enter insert mode
map <silent><leader><Enter> o<Esc>k
" tabbing
map <silent>K       :tabnext<CR>
map <silent>J       :tabprevious<CR>
" new tab
map <Leader>t :tabnew<CR>
" remove trailing whitespace
map <leader>w :FixWhitespace<CR>

nmap <F6>       :SyntasticToggleMode<CR>
nmap <leader>fp :Git push<CR>
nmap <leader>fm :Git pull<CR>
nmap <leader>fc :Gread<CR>
nmap <leader>fw :Gwrite<CR>
nmap <C-s>      :wa<CR>
nmap <leader>x  :x<CR>


" clear search highlight
nnoremap <leader><space> :noh<CR>
" shortcuts
nnoremap ; :
" open gf in new tab
nnoremap gf <C-W>gf
nnoremap Q gqap
nnoremap <leader>= ea<C-X><C-S>

" clear ^M messup
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
" move between splits
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Unite
nnoremap <C-p> :Unite file_rec<cr>
nnoremap <space>/ :Unite ack.<cr>

" Project settings
if filereadable(".lvimrc")
    source .lvimrc
endif
