set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
source $HOME/.vim/plugin/plugins.vim
call vundle#end()            " required
" Setting options
  set nocompatible
  set undofile
  set undodir=~/.vim/.undo/
  set history=5000
  set autoindent
  set cursorcolumn
  set cmdheight=1
  set cursorline
  set cindent
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
  "set termguicolors                                            " sets color from the terminal
  set background=dark                                          " Sets background to dark"
  colorscheme remo
  set copyindent

" Folding
  set foldmethod=indent
  set foldnestmax=15
  set nofoldenable
  set foldlevel=2
  set foldcolumn=1
  set spellsuggest=15 "Limits how many words show up
  set linebreak "does not break the whole word
 " set foldcolumn=1 "sets space on the left
  set scrolloff=2
  autocmd Colorscheme * highlight FoldColumn guifg=bg guibg=bg " Colorscheme forlding
  hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE" "Colorscheme for numbers

 " GruveBox Options
  nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
  nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
  nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>



" Autocomplete with dictionary words when spell check is on
  set complete+=kspell
  set spellsuggest=15
  set linebreak

" Always use vertical diffs
set diffopt+=vertical

" enable syntax highlighting
syntax enable
syntax on

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
  nnoremap <leader>u :YcmCompleter GoToDeclaration<CR>
  nnoremap <leader>i :YcmCompleter GoToDefinition<CR>
  nnoremap <leader>o :YcmCompleter GoToInclude<CR>
  nnoremap <leader>nh :noh<CR>
  nnoremap <leader>st :SyntasticToggleMode<CR>
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

"
" plugin settings asciidoct/asciidoctor
  let g:gitgutter_highlight_lines = 1
  let g:ctrlp_match_window = 'order:ttb,max:20'
  let g:NERDSpaceDelims=1
  let g:gitgutter_enabled = 0
  let g:vim_asciidoc_initial_foldlevel=1

  " syntastic options
  let g:syntastic_mode_map = {
        \ "mode": "active",
        \ "active_filetypes": ["ruby","yaml"],
        \ "passive_filetypes": ["php", "phpcs", "phpmd"] }
  let g:syntastic_asciidoc_asciidoc_exec = "asciidoctor"
  let g:syntastic_python_checkers = ['flake8']
  let g:syntastic_yaml_checkers = ['yamllint']
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_error_symbol = "✗"
  let g:syntastic_warning_symbol = "⚠"
  let g:syntastic_check_on_wq = 0

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
"
" Settings for yaml options
 au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/plugin/yaml.vim

"Setting for scala
"let g:scala_scaladoc_indent=1

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

"Ansible opitons
let g:ansible_options = {'ignore_blank_lines': 0}
  augroup ansible_options
    autocmd!
    autocmd FileType ansible setlocal spell
    autocmd BufRead,BufNewFile *.{yml,yaml} setlocal spell
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
  set tabstop=4           " Tab width
  set softtabstop=4       " Soft tab width
  set shiftwidth=4        " Shift width
  set expandtab           " Use spaces instead of tabs
  augroup END

  " Terraform
  autocmd BufNewFile,BufRead *.tf ft=terraform

  augroup apache_web
  au BufNewFile,BufRead httpd,domains,ssl{.conf} setl ft=apache
  augroup END


   " Airline¬
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_nr_show = 1
    let g:airline#extensions#tabline#left_sep = "\u2b80"
    let g:airline#extensions#tabline#left_alt_sep = "\u2b81"

    "Set the switch Buffer shortcut
    "nnoremap <C-N> :bn<CR>¬
    "nnoremap <C-P> :bp<CR>¬

    set laststatus=2
    let g:airline#extensions#whitespace#enabled = 0
    let g:airline#extensions#whitespace#symbol = '!'
    set guifont=Consolas\ for\ Powerline\ FixedD:h11¬
    let g:Powerline_symbols="fancy"

    if !exists('g:airline_symbols')
     let g:airline_symbols = {}
    endif

    let g:airline_left_sep = "\u2b80"
    let g:airline_left_alt_sep = "\u2b81"
    let g:airline_right_sep = "\u2b82"
    let g:airline_right_alt_sep = "\u2b83"
    let g:airline_symbols.branch = "\u2b60"
    let g:airline_symbols.readonly = "\u2b64"
    let g:airline_symbols.linenr = "\u2b61"
    let g:airline_highlighting_cache = 1
    let g:airline_theme = 'biogoo'



    set t_Co=256
    set t_ut=



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
  set nuw=2
  function! NumberToggle()
   if(&relativenumber == 1)
        set nornu
        set number
   else
        set relativenumber
   endif
  endfunc

call NumberToggle()
 "Pull down color
  hi Pmenu ctermfg=15 ctermbg=5 guifg=#ffffff guibg=#444444

  " Youcompletme Plugin Opitons
   let g:ycm_key_list_select_completion = ['<Down>']
   let g:ycm_key_list_previous_completion = ['<Up>']
   let g:ycm_confirm_extra_conf=0
   let g:ycm_error_symbol = '>>'
   let g:ycm_warning_symbol = '>*'
   let g:ycm_collect_identifiers_from_tags_files=1
   let g:ycm_min_num_of_chars_for_completion=2
   let ycm_cache_omnifunc=0
   let g:ycm_seed_identifiers_with_syntax=1
   let g:ycm_key_invoke_completion = '<C-a>'
   nnoremap <leader>u :YcmCompleter GoToDeclaration<CR>
   nnoremap <leader>i :YcmCompleter GoToDefinition<CR>
   nnoremap <leader>o :YcmCompleter GoToInclude<CR>
   let g:ycm_complete_in_comments = 1
   let g:ycm_complete_in_strings = 1
   let g:ycm_collect_identifiers_from_comments_and_strings = 0

