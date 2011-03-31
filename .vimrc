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

"set makeprg=python\ manage.py\ validate " django stuff

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

" tabbing
map <silent><A-right> :tabnext<CR>
map <silent><A-left> :tabprevious<CR>
map <silent><A-x> :tabclose<CR>

" auto nerd tree
autocmd VimEnter * NERDTree

" clear search highlight
nnoremap <leader><space> :noh<cr>

" clipboard
set clipboard="+

" shortcuts
nnoremap ; :

" vimango
"let vimango_app_prefix = 'apps/'
let vimango_template_prefix = 'templates/'

:set hidden

let Tlist_Close_On_Select = 1
let Tlist_Use_Right_Window = 1

" clear ^M messup
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"set gfn=Inconsolata\ Medium\ 13
"set gfn=Monaco\ 11
set gfn=Droid\ Sans\ Mono\ 12
if has("gui_running")
    colorscheme synic
endif

set tags+=/home/tuxcanfly/.tags/django13.tags
set path+=new_templates,templates,apps
let g:closetag_default_xml=1

" open gf in new tab
:nnoremap gf <C-W>gf

"new tab
map <Leader>t :tabnew<CR>
set includeexpr=substitute(v:fname,'\\.','/','g')
set suffixesadd=.py
"nnoremap <C-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>

" Visually select the text that was last edited/pasted
"nmap gV `[v`]

" Visual indent after paste
"nnoremap gp "+gP`[V`]=
"nnoremap p p`[V`]=
let g:sparkupNextMapping = '<c-h>'

"noremap^M<Up><Up><Down><Down><Left><Right><Left><Right>ba :botright !figlet "Vim    FTW"<CR>
map <leader>gp :%vimgrep <cword> **/*.py<CR>
map <leader>gh :%vimgrep <cword> **/*.html<CR>

" Conque shell
map <leader>e :ConqueTermSplit ipython manage.py shell<CR>
map <F6> :ConqueTermSplit bash<CR>

" prevent cursor jumping in v-mode
vnoremap <S-Up> <Up>
vnoremap <S-Down> <Down>

" remove trailing whitespace
map <leader>w :FixWhitespace<CR>

" paste without yanking
vmap r "_dP

"copy
vmap <F8> "+ygv"zy`>
"paste (Shift-F8 to paste after normal cursor, Ctrl-F8 to paste over visual selection)
nmap <F8> "zgP
nmap <S-F8> "zgp
imap <F8> <C-r><C-o>z
vmap <C-F8> "zp`]
cmap <F8> <C-r><C-o>z
"copy register
autocmd FocusGained * let @z=@+

" this causes problems with taglist
"autocmd FileType python set ft=python.django
autocmd FileType html set ft=htmldjango.html

" quicker trans tags around selection
"let g:surround_{char2nr("t")} = "{% trans \"\r\" %}"
"let g:surround_{char2nr("l")} = "{% blocktrans %}\r{% endblocktrans %}"
"nmap <F11> viwSt
"nmap <F12> vitSl

" use omnicompletion
set omnifunc=pythoncomplete#Complete

" stealing tpope's statusline
set statusline=[%n]%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2

function! s:Gentags()
    :! find -name \*.py -print | xargs ptags.py
endfunction

command! -nargs=0 Gentags call s:Gentags()

nmap K i<cr><esc>k$

nmap <leader>fp :Git push origin master<CR>
nmap <leader>fm :Git pull origin master<CR>

" django virtualenv
if filereadable($VIRTUAL_ENV . '/.vimrc')
    source $VIRTUAL_ENV/.vimrc
endif
