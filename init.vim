call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'davidhalter/jedi-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.local/share/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'vim-airline/vim-airline'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'

call plug#end()

"""""""""""""""""""""""""""deoplete.vim settings"""""""""""""""""""""""""""""""

" deoplete general settings
let g:deoplete#enable_at_startup = 1
" preview window split
set splitbelow
" navigate list with tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" close preview window on leaving the insert mode
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" deoplete-go
let g:deoplete#sources#go#gocode_binary = $GOPATH.'bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#builtin_objects = 1
let g:deoplete#sources#go#source_importer = 1

""""""""""""""""""""""""""vim-airline-themes.vim settings""""""""""""""""""""""

let g:airline_theme='powerlineish' " <theme> is a valid theme name
" more themes: https://github.com/vim-airline/vim-airline/wiki/Screenshots

""""""""""""""""""""""""""""gruvbox.vim setings""""""""""""""""""""""""""""""""

colorscheme gruvbox
set background=dark " use dark mode
"set background=light " uncomment to use light mode

""""""""""""""""""""""""""neoformat.vim setings"""""""""""""""""""""""""""""""" 

"Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

""""""""""""""""""""""""""jedi-vim.vim setings""""""""""""""""""""""""""""""""" 

"disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

""""""""""""""""""""""""""neomake.vim setings""""""""""""""""""""""""""""""""""

let g:neomake_python_enabled_makers = ['flake8'] 
let g:neomake_typescript_enabled_makers = ['eslint']
call neomake#configure#automake('nrwi', 500)

""""""""""""""""""""""""""vim-highlightedyank.vim setings""""""""""""""""""""""

" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

""""""""""""""""""""""""""SimpylFold.vim setings"""""""""""""""""""""""""""""""

let g:SimpylFold_docstring_preview = 1

"""""""""""""""""""""""""""General settings""""""""""""""""""""""""""""""""""""

set number
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
