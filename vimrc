set t_Co=256
set tabstop=4
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
set laststatus=2
" set relativenumber
set nu
set undofile

syntax on

colorscheme pafka

set list
set listchars=tab:▸\ ,eol:¬,nbsp:␣,trail:·

highlight CursorLineNr cterm=none ctermfg=0 guifg=#073642
" highlight NonText cterm=none ctermfg=0 guifg=#073642
" highlight SpecialKey cterm=none ctermfg=0 guifg=#073642 ctermbg=8 guibg=#002b36

set statusline=%F%m%r%h%w\ (%{&ff}){%Y}[%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>


" Save by root
cmap w!! w !sudo tee % >/dev/null

" Tabbing fun
nnoremap t> :tabnext<CR>
nnoremap t< :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>


set wrap
set textwidth=120
set formatoptions=qrn1
set colorcolumn=120

set incsearch   " show search matches as you type
set ignorecase  " case insensitive search
set smartcase   " If a capital letter is included in search, make it case-sensitive

" Commenting stuff 
let s:comment_map = {
	\   "c": '// ',
	\   "cpp": '// ',
	\   "go": '// ',
	\   "java": '// ',
	\   "javascript": '// ',
	\   "php": '// ',
	\   "python": '# ',
	\   "ruby": '# ',
	\   "vim": '" ',
	\ }

function! ToggleComment()
	if has_key(s:comment_map, &filetype)
		let comment_leader = s:comment_map[&filetype]
		if getline('.') =~ "^" . comment_leader
		" Uncomment the line
			execute "s#^" . comment_leader . "#"
		else
		" Comment the line
			execute "s#^#" . comment_leader . "#"
		endif
		else
			echo "No comment leader found for filetype"
		end
endfunction

nnoremap cl :call ToggleComment()<cr>
vnoremap cl :call ToggleComment()<cr>
