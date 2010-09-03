filetype plugin indent on
filetype plugin on

set noic
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number

map <F4> :NERDTreeToggle<CR>

colorscheme elflord

" Hide python cache files (.pyc) in NERDTree
let NERDTreeIgnore=['\.pyc']

let g:pydiction_location = '/home/tuxcanfly/.vim/after/ftplugin/complete-dict'

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

" insert newline but dont enter insert mode
map <S-Enter> O<Esc>j
map <CR> o<Esc>k

" python ctags 
set tags+=$HOME/.vim/tags/python.ctags

" autocompletion
autocmd FileType python set omnifunc=pythoncomplete#Complete

" tabbing
map <silent><A-Right> :tabnext<CR> 
map <silent><A-Left> :tabprevious<CR>

" auto nerd tree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
