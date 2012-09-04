filetype plugin on
filetype plugin indent on


""" ---- Settings ----

set autoindent                                              " always set autoindenting on
set autoread
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
set gfn             =Consolas\ 12
set background      =dark
set tags            +=~/.tags/tags
set path            +=templates
set includeexpr     =substitute(v:fname,'\\.','/','g')
set suffixesadd     =.py
set statusline      =[%n]%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus      =2
set completeopt     =menu
set rtp             +=~/.vim/bundle/vundle/

call vundle#rc()

let NERDTreeIgnore                      =['\.pyc']
let g:closetag_default_xml              =1
let g:sparkupNextMapping                ='<c-h>'
let g:ackprg                            ="ack-grep -H --nocolor --nogroup --column"
let g:surround_{char2nr("r")}           ="_(u\r)"
let g:virtualenv_directory              ="/home/tuxcanfly/.virtualenvs2.7/"
let g:Powerline_symbols                 ="fancy"
let g:UltiSnipsSnippetDirectories       =["UltiSnips", "snippets"]
let g:neocomplcache_enable_at_startup   =1
let g:syntastic_check_on_open           =1
let g:syntastic_error_symbol            ='✗'
let g:syntastic_warning_symbol          ='⚠'

colorscheme lucius
function! s:Gentags()
    :! find . -name '*.py' | xargs ctags
endfunction
command! -nargs=0 Gentags call s:Gentags()


autocmd     FileType            html        set         ft          =htmldjango
autocmd     FileType            coffee      setlocal    ts          =2  sts=2   sw=2    et
autocmd     FileType            jade        setlocal    ts          =2  sts=2   sw=2    et

""" ---- Bundles ------

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-unimpaired'
Bundle 'bkad/CamelCaseMotion'
Bundle 'matchit.zip'
Bundle 'kogakure/vim-sparkup'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'vim-scripts/trailing-whitespace'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/UltiSnips'
Bundle 'html5.vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'argtextobj.vim'
Bundle 'ack.vim'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Shougo/neocomplcache'
Bundle 'digitaltoad/vim-jade'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tuxcanfly/vim-json'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/syntastic'

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
map <leader>g   :Ack <cword>
map <leader>gp  :Ack --py <cword>
map <leader>gh  :Ack --html <cword>
map <leader>gj  :Ack --js <cword>
map <leader>gc  :Ack --css <cword>
" remove trailing whitespace
map <leader>w :FixWhitespace<CR>


nmap <F3>       :TagbarToggle<CR>
nmap <F4>       :NERDTreeToggle<CR>
nmap <F5>       :Gentags<CR>
nmap <F6>       :SyntasticToggleMode<CR>
nmap <leader>fp :Git push<CR>
nmap <leader>fm :Git pull<CR>
nmap <leader>fc :Gread<CR>
nmap <C-s>      :w<CR>
nmap <leader>x  :x<CR>


" clear search highlight
nnoremap <leader><space> :noh<CR>
" shortcuts
nnoremap ; :
" open gf in new tab
nnoremap gf <C-W>gf


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
