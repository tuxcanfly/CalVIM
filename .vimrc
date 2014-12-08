syntax on
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
set tags            +=~/.tags/django.tags
set path            +=templates
set includeexpr     =substitute(v:fname,'\\.','/','g')
set suffixesadd     =.py
set laststatus      =2
set completeopt     =menu
set runtimepath     +=~/.vim/bundle/vundle/
call vundle#rc()

let g:closetag_default_xml              =1
let g:surround_{char2nr("r")}           ="_(u\r)"
let g:syntastic_python_flake8_args      ='--ignore=E501,E128,E225'
let g:syntastic_mode_map                ={ 'mode': 'passive' }
let g:go_bin_path                       = expand("~/.bin")
let g:go_snippet_engine                 = "neosnippet"
let g:go_doc_keywordprg_enabled         = 0

colorscheme herald

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

au BufNewFile *.go setlocal filetype=go fileencoding=utf-8 fileformat=unix
au BufRead *.go setlocal filetype=go fileencoding=utf-8 fileformat=unix
au BufReadPost *.go setlocal filetype=go fileencoding=utf-8 fileformat=unix
autocmd BufWrite *.go :GoImports

""" ---- Plugins ------

Plugin 'fatih/vim-go'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-abolish'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'bling/vim-airline'
Plugin 'Chiel92/vim-autoformat'
Plugin 'skwp/greplace.vim'
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
map <Leader>T :tabnew<CR>
" Project search
map <leader>g   :Ggrep <cword>
" remove trailing whitespace
map <leader>w :FixWhitespace<CR>

nmap <F6>       :SyntasticToggleMode<CR>
nmap <leader>fp :Git push<CR>
nmap <leader>fm :Git pull<CR>
nmap <leader>fc :Gread<CR>
nmap <leader>fw :Gwrite<CR>
nmap <C-s>      :wa<CR>
nmap <leader>x  :x<CR>
nmap <F9>       :Dispatch<CR>
nnoremap !d :.!date +\%Y-\%m-\%d\ \%H:\%M<CR>


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

"noremap q :close<CR>

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

"Show a list of interfaces which is implemented by the type under your cursor with <leader>s
au FileType go nmap <Leader>f <Plug>(go-implements)

"Show type info for the word under your cursor with <leader>i (useful if you have disabled auto showing type info via g:go_auto_type_info)
au FileType go nmap <Leader>i <Plug>(go-info)

"Open the relevant Godoc for the word under the cursor with <leader>gd or open it vertically with <leader>gv
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

"Or open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

"Run commands, such as go run with <leader>r for the current file or go build and go test for the current package with <leader>b and <leader>t. Display a beautiful annotated source code to see which functions are covered with <leader>c.
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>i <Plug>(go-install)
au FileType go nmap <leader>k <Plug>(go-imports)

"Replace gd (Goto Declaration) for the word under your cursor (replaces current buffer):
au FileType go nmap gd <Plug>(go-def)

"Or open the definition/declaration in a new vertical, horizontal or tab for the word under your cursor:
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" modify selected text using combining diacritics
command! -range -nargs=0 Overline        call s:CombineSelection(<line1>, <line2>, '0305')
command! -range -nargs=0 Underline       call s:CombineSelection(<line1>, <line2>, '0332')
command! -range -nargs=0 DoubleUnderline call s:CombineSelection(<line1>, <line2>, '0333')
command! -range -nargs=0 Strikethrough   call s:CombineSelection(<line1>, <line2>, '0336')

function! s:CombineSelection(line1, line2, cp)
  execute 'let char = "\u'.a:cp.'"'
  execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
endfunction
