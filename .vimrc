call plug#begin()
" ================== Plugins in evaluation ===================
" Braceless vim
Plug 'tweekmonster/braceless.vim'
"
Plug 'davidhalter/jedi-vim'
"
" Python and other lenguajes code checker
"Plug 'scrooloose/syntastic'
" =========== Plugings =====================
" Git
Plug 'mhinz/vim-signify'

Plug 'cjrh/vim-conda'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'cburroughs/pep8.py'
Plug 'scrooloose/nerdcommenter'
Plug 'klen/python-mode'
" pydoc
Plug 'fs111/pydoc.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Autoclose
Plug 'Townk/vim-autoclose'


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
"Plug 'shougo/neocomplcache.vim'
" Neocomplete
Plug 'shougo/neocomplete.vim'

" EasyMotion
Plug 'easymotion/vim-easymotion'

" Move
Plug 'matze/vim-move'
call plug#end()

" Autocompletado de carpetas y archivos
set wildmode=list:longest
"Color Highlight
highlight Search cterm=NONE ctermfg=black ctermbg=grey

"--- Ejecutar Python en Conda-Vim
map <F9> :!python % <CR>

let g:pep8_map='<F5>'

set number

" Highlight in search results
set hlsearch

" Ver siempre la barra inferior
set ls=2
syntax on

"file finder mapping
let g:ctrlp_map = ',e'

" probando
"nnoremap <Space> i_<Esc>r
nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap S :exec "normal a".nr2char(getchar())."\e"<CR>
set showcmd
set showmatch
set ignorecase

set clipboard=unnamedplus


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
"highlight ColorColumn ctermbg=235 guibg=#3f0000


" Neocomplcache -------------------------------
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_ignore_case = 1
"let g:neocomplcache_enable_smart_case = 1
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_enable_fuzzy_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_auto_completion_start_length = 1
"let g:neocomplcache_manual_completion_start_length = 1
"let g:neocomplcache_min_keyword_length = 1
"let g:neocomplcache_min_syntax_length = 1
"let g:neocomplcache_same_filetype_lists = {}
"let g:neocomplcache_same_filetype_lists._ = '_'

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
"let g:syntastic_aggregate_errors = 1
"let g:syntastic_stl_format = "[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
 "Comprobar al abrir
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

 "ver errores en el archivo
"nmap <leader>e :Errors<CR>
 "Iconos
"let g:syntastic_enable_signs = 1
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_style_error_symbol = '✗'
"let g:syntastic_style_warning_symbol = '⚠'

" Python-mode config -----------------------------
let g:pymode = 1
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1
let g:pymode_indent = 1
let g:pymode_folding = 0

let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 4

let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'

:set eadirection=hor

" Deshabilitando rope, soporte virtualenv y runcode
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_virtualenv_enabled = 0
let g:pymode_run = 0

"Check
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 1
let g:pymode_lint_message = 1
let g:pymode_lint_signs = 1
"let g:pymode_lint_todo_symbol = 'WW'
"let g:pymode_lint_comment_symbol = 'CC'
"let g:pymode_lint_visual_symbol = 'RR'
"let g:pymode_lint_error_symbol = 'EE'
"let g:pymode_lint_info_symbol = 'II'
"let g:pymode_lint_pyflakes_symbol = 'FF'
let g:pymode_lint_todo_symbol = '✗✗'
let g:pymode_lint_comment_symbol = '✗✗'
let g:pymode_lint_visual_symbol = '✗✗'
let g:pymode_lint_error_symbol = '⚠⚠'
let g:pymode_lint_info_symbol = '⚠⚠'
let g:pymode_lint_pyflakes_symbol = '⚠⚠'

" Syntax
let g:pymode_syntax = 1
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_highlight_equal_operator = g:pymode_syntax_all
let g:pymode_syntax_highlight_self = g:pymode_syntax_all
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_builtin_types = g:pymode_syntax_all

" Braceless
autocmd FileType python,coffee BracelessEnable +indent +fold +fold-slow +highlight-cc2
highlight BracelessIndent ctermfg=4 ctermbg=1 cterm=inverse

" Pydoc
filetype plugin on

" Autoclose
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

" Signify
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

" Neocomplete
" Disable AutoComplPop y enable Neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:necomplete#sources#syntas#min_length = 3

" Jedi + Neocomplete
autocmd FileType python setlocal omnifunc=jedi#completions
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteTags
let g:jedicompletions_enabled = 0
let g:jedi#auto_vim_configuration = 0

" Define dictionary
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \}

"Define keyword.
if !exists('g:necompplete#keyword_patterns')
	let g:necomplete#keyword_patterns = {}
endif
let g:necomplete#keyword_patterns = {}

if !exists('g:necomplete#force_omni_input_patterns')
	let g:necomplete#force_omni_input_patterns = {}
endif
let g:necomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
"
" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1

" Jedi-Vim config ----------------------------
let g:jedi#show_call_signatures = 0
let g:jedi#auto_close_doc = 1
