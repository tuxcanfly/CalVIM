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
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set nobackup
set noswapfile
set pastetoggle=<F2>
set nocompatible

set makeprg=python\ manage.py\ validate " django stuff

set cmdheight=2 " silent shell prompts

" nerdtree commentor
map <Leader>c ,c
map <Leader>e <C-e>

" toggle NERDTree
map <F4> :NERDTreeToggle<CR>

"toggle Taglist
map <F3> :TlistToggle<CR>

" toggle fugitive status
map <silent><leader>s :Gstatus<CR>
" toggle fugitive diff
map <silent><leader>d :Gdiff<CR>

" change escpae
:inoremap <C-leader> <Esc>

" ignore python cruft
let NERDTreeIgnore=['\.pyc']
set wildignore=*.py[co]

" insert newline but dont enter insert mode
map <silent><leader><Enter> o<Esc>k

" python ctags 
set tags+=$HOME/.vim/tags/python.ctags

" tabbing
map <silent><A-Right> :tabnext<CR> 
map <silent><A-Left> :tabprevious<CR>
map <silent><C-x> :tabclose<CR>

" auto nerd tree
autocmd VimEnter * NERDTree

" clear search highlight
nnoremap <leader><space> :noh<cr>

" clipboard
set clipboard="+

" shortcuts
nnoremap ; :

" vimango
let vimango_app_prefix = 'apps/'
let vimango_template_prefix = 'templates/'

:set hidden

let Tlist_Close_On_Select = 1
let Tlist_Use_Right_Window = 1

" clear ^M messup
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

autocmd FileType python set omnifunc=pysmell#Complete
set gfn=Inconsolata\ Medium\ 13
if has("gui_running")
    colorscheme ir_black
    set guioptions-=T   " Get rid of toolbar "
    set guioptions-=m   " Get rid of menu    "
endif

set tags+=/home/tuxcanfly/.tags/tags
set path+=new_templates,templates,apps
let g:closetag_default_xml=1

" open gf in new tab
:nnoremap gf <C-W>gf

"new tab
map <Leader>t :tabnew<CR>
set includeexpr=substitute(v:fname,'\\.','/','g')
set suffixesadd=.py
"nnoremap <C-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>

