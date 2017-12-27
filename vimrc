" ~/.vim/vimrc
" vim: nowrap fdm=marker

source $HOME/.vim/packages.vim

" Basics
let mapleader = "\<Space>"
set showcmd
set number
set hidden
set history=5000
set noswapfile
set nobackup
set listchars=tab:▸\ ,trail:·,eol:¬
set fileformats=unix,mac,dos
set foldcolumn=3
set termguicolors
set background=dark
syntax on

" GUI
if has("gui_macvim")
	set guifont=Inconsolata\ for\ Powerline:h13
	set lines=48
	set columns=132
	set transparency=4
	set guioptions=gm
endif

" Linux
if has("unix")
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	let g:solarized_termtrans = 1
endif

" Plugin Config {{{1
"" Airline {{{2
noremap <leader>ar :AirlineRefresh<cr>
if !exists("g:airline_symbols")
	let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline_theme = "solarized"
let g:airline#extensions#branch#empty_message = "No SCM"
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1

"" Completor {{{2
let g:completor_python_library = '/usr/local/bin/python2'
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

"" Fugitive {{{2
noremap <leader>gs :Gstatus<cr>
noremap <leader>gd :Gdiff<cr>
noremap <leader>gp :Gpush<cr>

"" Gitgutter {{{2
let g:gitgutter_highlight_lines = 1

"" NerdTree {{{2
if has("autocmd")
	autocmd StdinReadPre * let s:std_in = 1
	autocmd vimenter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
	autocmd vimenter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argc()[0] | wincmd p | ene | endif
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
end
nnoremap <leader>n :NERDTreeToggle<cr>

"" Solarized8 {{{2
silent! colorscheme solarized8
let g:solarized_termtrans = 1
let g:solarized_visibility = "high"

"" Syntastic {{{2
"let g:syntastic_mode_map = {
"		\ 'mode': 'active',
"		\ 'active_filetypes': [],
"		\ 'passive_filetypes': []
"		\ }
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

" Mappings {{{1
nnoremap <tab> %
vnoremap <tab> %
nnoremap <leader>j :lnext<cr>
nnoremap <leader>k :lprev<cr>
nnoremap <leader><space> :noh<cr>
nnoremap <leader>li :set list!<cr>
nnoremap <leader>ev :e ~/.vim/vimrc<cr>

"" Line Numbers {{{2
function! NumberToggle()
	if(&relativenumber == 1)
		set nornu
		set number
	else
		set relativenumber
	endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" Autocmds {{{1
if has("autocmd")
	augroup FTCheck " {{{2
		autocmd!
		autocmd BufNewFile,BufRead *.j2 set ft=jinja
		autocmd BufNewFile,BufRead *.tf set ft=terraform
		autocmd BufNewFile,BufRead Vagrantfile set ft=ruby
	augroup END
	augroup FTOptions " {{{2
		autocmd!
		autocmd FileType markdown setlocal wrap linebreak colorcolumn=80 showbreak=… spell
		autocmd FileType yaml setlocal list ts=8 expandtab sts=2 sw=2 colorcolumn=80
		autocmd FileType python setlocal list ts=8 expandtab sts=4 sw=4 colorcolumn=80
		autocmd FileType vim setlocal fdm=marker
	augroup END
	augroup vimrc " {{{2
		autocmd!
		autocmd! BufWritePost vim source $MYVIMRC
	augroup END
endif
