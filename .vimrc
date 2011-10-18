" bundles
call pathogen#runtime_append_all_bundles()


filetype plugin on
filetype plugin indent on


""" ---- Settings ----

set noic
set softtabstop=4
set expandtab
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set nobackup
set noswapfile
set pastetoggle=<F2>
set nocompatible
set t_Co=256
set wildignore=*.py[co]
set clipboard="+
set hidden
set gfn=Mensch\ 13
set background=light
set tags+=~/.tags/django13.tags
set path+=templates
set includeexpr=substitute(v:fname,'\\.','/','g')
set suffixesadd=.py
set statusline=[%n]%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2


let NERDTreeIgnore=['\.pyc']
let g:closetag_default_xml=1
let g:sparkupNextMapping = '<c-h>'
let g:pep8_map='<F6>'
let g:pyflakes_use_quickfix=0


colorscheme herald
function! s:Gentags()
    :! find -name \*.py -print | xargs ptags.py
endfunction
command! -nargs=0 Gentags call s:Gentags()

" PyFlakes error highlight
hi SpellBad ctermfg=160 guifg=fg cterm=underline guisp=#df0000


""" ---- Keybindings ----


" toggle NERDTree
map <F4> :NERDTreeToggle<CR>
" toggle fugitive status
map <silent><leader>s :Gstatus<CR>
" toggle fugitive diff
map <silent><leader>d :Gdiff<CR>
" insert newline but dont enter insert mode
map <silent><leader><Enter> o<Esc>k
" tabbing
map <silent><S-right> :tabnext<CR>
map <silent><S-left> :tabprevious<CR>
map <silent><A-x> :tabclose<CR>
"new tab
map <Leader>t :tabnew<CR>
map <leader>gp :%vimgrep <cword> **/*.py
map <leader>gh :%vimgrep <cword> **/*.html
" remove trailing whitespace
map <leader>w :FixWhitespace<CR>


nmap <F5> :Gentags<CR>
nmap <leader>fp :Git push<CR>
nmap <leader>fm :Git pull<CR>


"toggle TagBar
nnoremap <silent> <F3> :TagbarToggle<CR>
" clear search highlight
nnoremap <leader><space> :noh<CR>
" shortcuts
nnoremap ; :
" open gf in new tab
nnoremap gf <C-W>gf


" clear ^M messup
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
" prevent cursor jumping
noremap <S-Up> <Up>
noremap <S-Down> <Down>
" move between splits
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l


" screen
nmap <F11> :ScreenShell<CR>
nmap <F12> :ScreenQuit<CR>


vmap <F7>  :ScreenSend<CR>


" sudo make me a sandwich
cmap w!! %!sudo tee > /dev/null %
