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
set wildmode        =full
set wildmenu
set clipboard       =unnamedplus
set gfn             =Sauce\ Code\ Powerline\ Regular\ 14
set background      =dark
set tags            +=~/.tags/django.tags
set path            +=templates
set includeexpr     =substitute(v:fname,'\\.','/','g')
set suffixesadd     =.py
set laststatus      =2
set completeopt     =menu
set runtimepath     +=~/.vim/bundle/vundle/
call vundle#rc()

let NERDTreeIgnore                      =['\.pyc']
let g:closetag_default_xml              =1
let g:sparkupNextMapping                ='<c-h>'
let g:ackprg                            ="ack-grep -H --nocolor --nogroup --column"
let g:surround_{char2nr("r")}           ="_(u\r)"
let g:virtualenv_directory              ="~/.virtualenvs2.7/"
let g:Powerline_colorscheme             ="colorful"
let g:Powerline_symbols                 ="unicode"
let g:neocomplcache_enable_at_startup   =1
let g:syntastic_python_flake8_args      ='--ignore=E501,E128,E225'
let g:syntastic_mode_map                ={ 'mode': 'passive' }
let g:signify_mapping_next_hunk         ='<leader>h'
let g:signify_mapping_prev_hunk         ='<leader>H'
let g:signify_mapping_toggle_highlight  ='<leader>T'
let g:go_bin_path                       = expand("~/.bin")

colorscheme wombat256mod

if filereadable(".lvimrc")
    source .lvimrc
endif


autocmd     FileType            html        set         ft          =htmldjango.html
autocmd     FileType            htmldjango  set         ft          =htmldjango.html
autocmd     FileType            coffee      setlocal    ts          =2  sts=2   sw=2    et
autocmd     FileType            jade        setlocal    ts          =2  sts=2   sw=2    et
autocmd     FileType            python      compiler    pyunit
autocmd     FileType            modula2     set         ft          =markdown
autocmd     FileType            go          setlocal    noexpandtab

""" ---- Plugins ------

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-unimpaired'
Plugin 'bkad/CamelCaseMotion'
Plugin 'matchit.zip'
Plugin 'tristen/vim-sparkup'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'vim-scripts/trailing-whitespace'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/UltiSnips'
Plugin 'html5.vim'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'argtextobj.vim'
Plugin 'mileszs/ack.vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'Shougo/neocomplcache'
Plugin 'digitaltoad/vim-jade'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tuxcanfly/vim-json'
Plugin 'majutsushi/tagbar'
Plugin 'skwp/greplace.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'jamessan/vim-gnupg'
Plugin 'scrooloose/syntastic'
Plugin 'benmills/vimux'
Plugin 'tuxcanfly/vimux-django-tests'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'nvie/vim-flake8'
Plugin 'bling/vim-airline'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'fatih/vim-go'
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
" Project search
map <leader>g   :Ggrep <cword>
" remove trailing whitespace
map <leader>w :FixWhitespace<CR>

nmap <F3>       :TagbarToggle<CR>
nmap <F4>       :NERDTreeToggle<CR>
nmap <F5>       :!ctags -R<CR>
nmap <F6>       :SyntasticToggleMode<CR>
nmap <leader>fp :Git push<CR>
nmap <leader>fm :Git pull<CR>
nmap <leader>fc :Gread<CR>
nmap <leader>fw :Gwrite<CR>
nmap <C-s>      :wa<CR>
nmap <leader>x  :x<CR>
nmap <F9>       :Dispatch<CR>


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
" prevent cursor jumping
noremap <S-Up>      <Up>
noremap <S-Down>    <Down>
" move between splits
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l


" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>
let g:ackprg                            ="ack-grep -H --nocolor --nogroup --column"
