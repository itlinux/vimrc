command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()

"command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
"command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

if !exists('*minpac#init')
  finish
endif

call minpac#init({'verbose': 3})
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('airblade/vim-gitgutter')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('glench/vim-jinja2-syntax')
call minpac#add('mattn/emmet-vim')
call minpac#add('godlygeek/tabular')
call minpac#add('hashivim/vim-terraform')
call minpac#add('jiangmiao/auto-pairs')
call minpac#add('lifepillar/vim-solarized8')
call minpac#add('altercation/vim-colors-solarized')
call minpac#add('maralla/completor.vim')
call minpac#add('maralla/completor-neosnippet')
call minpac#add('scrooloose/nerdtree')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-markdown')
call minpac#add('tpope/vim-sensible')
call minpac#add('tpope/vim-sleuth')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('vim-syntastic/syntastic')
call minpac#add('xuyuanp/nerdtree-git-plugin')
call minpac#add('VundleVim/Vundle.vim')
call minpac#add('austintaylor/vim-indentobject')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('juvenn/mustache.vim')
call minpac#add('kchmck/vim-coffee-script')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('majutsushi/tagbar')
call minpac#add('rking/ag.vim')
call minpac#add('MarcWeber/vim-addon-mw-utils')
call minpac#add('garbas/vim-snipmate')
call minpac#add('tomtom/tlib_vim')
call minpac#add('nathanaelkane/vim-indent-guides')
call minpac#add('nono/vim-handlebars')
call minpac#add('pangloss/vim-javascript')
call minpac#add('wookiehangover/jshint.vim')
call minpac#add('scrooloose/nerdtree')
call minpac#add('scrooloose/syntastic')
call minpac#add('slim-template/vim-slim')
call minpac#add('tpope/vim-bundler')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-cucumber')
call minpac#add('tpope/vim-dispatch')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-pastie')
call minpac#add('tpope/vim-ragtag')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-vividchalk')
call minpac#add('eventualbuddha/vim-protobuf')
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('vim-scripts/Align')
call minpac#add('vim-scripts/greplace.vim')
call minpac#add('vim-scripts/matchit.zip')
call minpac#add('lepture/vim-jinja')
call minpac#add('glench/vim-jinja2-syntax')
call minpac#add('hashivim/vim-terraform')
"call minpac#add('maralla/completor.vim')
call minpac#add('xuyuanp/nerdtree-git-plugin')
call minpac#add('avakhov/vim-yaml')
call minpac#add('morhetz/gruvbox')
call minpac#add('osyo-manga/vim-over')
call minpac#add('ervandew/supertab')
call minpac#add('luochen1990/rainbow')
call minpac#add('hashivim/vim-vagrant')
call minpac#add('chase/vim-ansible-yaml')
call minpac#add('derekwyatt/vim-scala')
