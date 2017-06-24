" Install YouCompleteMe
function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " -name: name of the plugin
  "  - status: 'installed', 'updated', or 'unchanged'
  "  - force: set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction

call plug#begin()
" Plug 'davidhalter/jedi-vim'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'cjrh/vim-conda'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'cburroughs/pep8.py'
Plug 'scrooloose/nerdcommenter'
Plug 'klen/python-mode'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Autoclose
Plug 'Townk/vim-autoclose'

" Python and other lenguajes code checker
"Plug 'scrooloose/syntastic'

"Paint css colors with the real color
Plug 'lilydjwg/colorizer'

"Buscar archivos 
Plug 'kien/ctrlp.vim'

" Zen coding
Plug 'mattn/emmet-vim'

" Window choose
Plug 't9md/vim-choosewin'

" Unimpaired
Plug 'tpope/vim-unimpaired'

" Neocomplcache
Plug 'shougo/neocomplcache.vim'

" EasyMotion
Plug 'easymotion/vim-easymotion'

" Move
Plug 'matze/vim-move'
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
"let g:airline_powerline_fonts = 0
let g:airline_theme = 'bubblegum'
"let g:airline_theme = 'base16'
"let g:airline#extensions#whitespace#enabled = 0

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

" Linea a los 80
"set colorcolumn=80
"highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Jedi-Vim config ----------------------------
"let g:jedi#show_call_signatures = 0

" Neocomplcache -------------------------------
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_manual_completion_start_length = 1
let g:neocomplcache_min_keyword_length = 1
let g:neocomplcache_min_syntax_length = 1
let g:neocomplcache_same_filetype_lists = {}
let g:neocomplcache_same_filetype_lists._ = '_'

" Move ------------------------------------------
let g:move_key_modifier = 'C'

" EasyMotion
let g:EasyMotion_do_mapping = 1
map \ <Plug>(easymotion-sn)
map \ <Plug>(easymotion-tn)

" Tab vs Space ---------------------------------
"set tabstop=4
"set shiftwidth=4

" Syntastic config ----------------------
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
" Python-mode config -----------------------------
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1
let g:pymode_indent = 1

let g:pymode_quickfix_minheight = 1
let g:pymode_quickfix_maxheight = 2

let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'

" Deshabilitando rope, soporte virtualenv y runcode
let g:pymode_rope = 0
let g:pymode_virtualenv_enabled = 0
let g:pymode_run = 0

"Check
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 1
let g:pymode_lint_message = 1

" Syntax
let g:pymode_syntax = 1
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_highlight_equal_operator = g:pymode_syntax_all
let g:pymode_syntax_highlight_self = g:pymode_syntax_all
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_builtin_types = g:pymode_syntax_all

" Youcompleteme
" Disable preview window up
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

let g:ycm_complete_in_comments = 1
