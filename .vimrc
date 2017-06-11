call plug#begin()
Plug 'davidhalter/jedi-vim'
Plug 'cjrh/vim-conda'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'cburroughs/pep8.py'
Plug 'scrooloose/nerdcommenter'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Autoclose
Plug 'Townk/vim-autoclose'
" Python and other lenguajes code checker
Plug 'scrooloose/syntastic'
"Paint css colors with the real color
Plug 'lilydjwg/colorizer'
"Buscar archivos 
Plug 'kien/ctrlp.vim'
" Zen coding
Plug 'mattn/emmet-vim'
" Window choose
Plug 't9md/vim-choosewin'
call plug#end()

"--- Ejecutar Python en Conda-Vim
map <F9> :!python % <CR>

let g:pep8_map='<F5>'

set number

"file finder mapping
let g:ctrlp_map = ',e'

" Airline ------------------------------
"
set laststatus=2
let g:airline_powerline_fonts = 0
let g:airline_theme = 'bubblegum'
"let g:airline_theme = 'base16'
"let g:airline#extensions#whitespace#enabled = 0
"
" to use fancy symbols for airline, uncomment the following lines and use a
" patched font (more info on the README.rst)
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%t'

" Choosewin  ------------------------------
nmap - <Plug>(choosewin)

" show big letters
let g:choosewin_overlay_enable = 1
