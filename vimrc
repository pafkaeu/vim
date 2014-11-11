set t_Co=256
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
" set relativenumber
set nu
set undofile

syntax on
let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termtrans = 1


colorscheme nazca


set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.
"highlight NonText guifg=#4a4a59,guibg=none
"highlight SpecialKey guifg=#4a4a59,guibg=none
"highlight NonText ctermfg=0
"highlight NonText guifg=#073642
"
"highlight SpecialKey ctermfg=0
"highlight SpecialKey guifg=#073642

highlight CursorLineNr cterm=none ctermfg=0 guifg=#073642
highlight NonText cterm=none ctermfg=0 guifg=#073642
highlight SpecialKey cterm=none ctermfg=0 guifg=#073642 ctermbg=8 guibg=#002b36


set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

cmap w!! w !sudo tee % >/dev/null

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

set nobackup
set noswapfile

set incsearch   " show search matches as you type
set ignorecase  " case insensitive search
set smartcase   " If a capital letter is included in search, make it case-sensitive
set nohlsearch  " dont highlight search results




