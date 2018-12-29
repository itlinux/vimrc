 " packages
 source $HOME/.vim/packages.vim
" thanks to http://vimcasts.org/e/4
  filetype on " without this vim emits a zero exit status, later, because of :ft off
  filetype off
" Setting options
  set nocompatible
  set undofile
  set undodir=~/.maximum-awesome/.undo/
  set history=5000
  set autoindent
  set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
  set backspace=2                                              " Fix broken backspace in some setups
  set backupcopy=yes                                           " see :help crontab
  set clipboard=unnamed                                        " yank and paste with the system clipboard
  set directory-=.                                             " don't store swapfiles in the current directory
  set noswapfile                                               " do not set swapfiles
  set encoding=utf-8
  set expandtab                                                " expand tabs to spaces
  set ignorecase                                               " case-insensitive search
  set incsearch                                                " search as you type
  set laststatus=2                                             " always show statusline
  set list                                                     " show trailing whitespace
  set listchars=tab:▸\ ,trail:·,eol:¬
  set ruler                                                    " show where you are
  set scrolloff=3                                              " show context above/below cursorline
  set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
  set showcmd
  set smartcase                                                " case-sensitive search if any caps
  set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
  set tabstop=8                                                " actual tabs occupy 8 characters
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip                     " MacOSX/Linux
  set wildmode=longest,list,full
  set wildmenu                                                 " show a navigable menu for tab completion
 " set termguicolors                                            " sets color from the terminal
 " set background=dark                                          " Sets background to dark"

"Options to set diffent colors
let &t_8f = "\<Esc>[31;1;%1u;%1u;%1um"
let &t_8b = "\<Esc>[38;1;%lu;%lu;%lum"

set copyindent

" Folding
  set foldmethod=indent
  set foldnestmax=10
  set nofoldenable
  set foldlevel=2
  set foldcolumn=3

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

" enable syntax highlighting
syntax enable

" Tmux & Clipboard
set clipboard^=unnamed

" ensure ftdetect et al work by including this after the Vundle stuff
filetype plugin indent on

" Enable basic mouse behavior such as resizing buffers. Off for iTerm2 on Mac
" section on preference to copy on select.
" set mouse=a
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

" keyboard shortcuts
let mapleader = ','
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <leader>l :Align
nnoremap <leader>a :Ag<space>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>] :TagbarToggle<CR>
nnoremap <leader>y :call system('nc -U ~/.clipper.sock', @0)<CR>
nnoremap <leader><space> :call whitespace#strip_trailing()<CR>
" fugitive git bindings
  nnoremap <leader>gt :GitGutterToggle<CR>
  nnoremap <leader>gs :Gstatus<CR>
  nnoremap <leader>gd :Gdiff<CR>
  nnoremap <leader>gp :Gpush<CR>
  nnoremap <space>ga :Git add %:p<CR><CR>
  nnoremap <space>gc :Gcommit -v -q<CR>
  nnoremap <space>gtt :Gcommit -v -q %:p<CR>
  nnoremap <space>gd :Gdiff<CR>
  nnoremap <space>ge :Gedit<CR>
  nnoremap <space>gr :Gread<CR>
  nnoremap <space>gw :Gwrite<CR><CR>
  nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
  nnoremap <space>gp :Ggrep<Space>
  nnoremap <space>gm :Gmove<Space>
  nnoremap <space>gb :Git branch<Space>
  nnoremap <space>go :Git checkout<Space>
  nnoremap <space>gps :Dispatch! git push<CR>
  nnoremap <space>gpl :Dispatch! git pull<CR>
noremap <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Options for fugitive
xnoremap dp :diffput<cr>
xnoremap do :diffget<cr>

" in case you forgot to sudo
cnoremap w!! %!sudo tee > /dev/null %

" plugin settings asciidoct/asciidoctor
  let g:gitgutter_highlight_lines = 1
  let g:ctrlp_match_window = 'order:ttb,max:20'
  let g:NERDSpaceDelims=1
  let g:gitgutter_enabled = 0
  let g:vim_asciidoc_initial_foldlevel=1
  " asciidoctor
  let g:syntastic_asciidoc_asciidoc_exec = "asciidoctor"

  let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
  let g:rainbow_conf = {
          \	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
          \	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
          \	'operators': '_,_',
          \	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
          \	'separately': {
          \		'*': {},
          \		'tex': {
          \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
          \		},
          \		'lisp': {
          \			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
          \		},
          \		'vim': {
          \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
          \		},
          \		'html': {
          \			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
          \		},
          \		'css': 0,
          \	}
          \}
  "
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Adding supertab from https://raw.githubusercontent.com/ervandew/supertab/
" option 1 is default
"let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabLongestHighlight = 1
let g:SuperTabLongestEnhanced = 1
autocmd FileType * 
      \if &omnifunc != '' |
      \call SuperTabChain(&omnifunc, "<c-p>") |
      \call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
      \endif


" setting bad words to underline instead of highlighed
hi clear SpellBad
hi SpellBad cterm=underline
hi SpellBad ctermfg=red guifg=red

" limit to 79
" Autocmd for collumnLimit
  augroup collumnLimit
  autocmd!
  autocmd BufEnter,WinEnter,FileType scala,java,asciidoc,yaml,yml,bash
  \ highlight CollumnLimit ctermbg=DarkGrey guibg=DarkGrey
  autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
  let collumnLimit = 79 " feel free to customize
  let pattern =
  \ '\%<' . (collumnLimit+1) . 'v.\%>' . collumnLimit . 'v'
  autocmd BufEnter,WinEnter,FileType scala,java,asciidoc,yaml,yml,bash
  \ let w:m1=matchadd('CollumnLimit', pattern, -1)
  augroup END

"Spelling and file types
  augroup markdownSpell
    autocmd!
    autocmd FileType markdown setlocal spell
    autocmd BufRead,BufNewFile *.md setlocal spell
  augroup END

  augroup AsciidocSpell
    autocmd!
    autocmd FileType asciidoc setlocal spell
    autocmd BufRead,BufNewFile *.adoc setlocal spell
  augroup END

  "Jinja 2
  autocmd BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja spell
  " yaml,yml,bash spelling
  autocmd Filetype yaml setlocal spell
  autocmd BufNewFile,BufRead *.bash,*.sh set ft=bash spell

  " Vagrant
  augroup vagrant
  au!
  au BufRead,BufNewFile Vagrantfile set filetype=ruby
  augroup END

  " Json
  augroup json
  au!
  au BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
  augroup END

  " GitHub
  augroup gitconfig
  au!
  au BufRead,BufNewFile gitconfig.local set filetype=gitconfig
  augroup END

  " VIM
  augroup vimrc.local
  au!
  au BufRead,BufNewFile vimrc.local set filetype=vim
  augroup END

  " TEXT
  augroup textfile
  au!
  au BufRead,BufNewFile *.{txt,text} set filetype=text spell
  augroup END

  " Terraform
  autocmd BufNewFile,BufRead *.tf ft=terraform


" Fix Cursor in TMUX
  if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif

" Don't copy the contents of an overwritten selection.
vnoremap p "_dP

" Line Numbers Options
  function! NumberToggle()
   if(&relativenumber == 1)
        set nornu
        set number
   else
        set relativenumber
   endif
  endfunc

call NumberToggle()
