execute pathogen#infect()
syntax on
set encoding=utf-8
set number
filetype plugin indent on

nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>


" Airline config
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='powerlineish'

" Line wrapping
set nowrap
set linebreak
set showbreak=▹


" Auto indent what you can
set autoindent

" Searching
set ignorecase
set smartcase
set gdefault
set hlsearch
set showmatch

" Enable jumping into files in a search buffer
set hidden


" Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab


" Make backspace a bit nicer
set backspace=eol,start,indent

" Gundo toggle
map <F5> <Esc>:GundoToggle<CR>

" Toggle line-wrap
map <F6> <Esc>:set wrap!<CR>


" Open file under cursor in new tab
map <F9> <Esc><C-W>gF<CR>:tabm<CR>

" Base64 decode word under cursor
nmap <Leader>b :!echo <C-R><C-W> \| base64 -d<CR>

" grep recursively for word under cursor
nmap <Leader>g :tabnew\|read !grep -Hnr '<C-R><C-W>'<CR>

" Visual prompt for command completion
set wildmenu



" NERDTREE
autocmd vimenter * NERDTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

map <C-o> :NERDTreeToggle<CR>



" EMMET only for HTML/CSS 
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
nnoremap <buffer> H :<C-u>execute "!pydoc3 " . expand("<cword>")<CR>
