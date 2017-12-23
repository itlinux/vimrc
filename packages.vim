command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('airblade/vim-gitgutter')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('glench/vim-jinja2-syntax')
call minpac#add('godlygeek/tabular')
call minpac#add('hashivim/vim-terraform')
call minpac#add('lifepillar/vim-solarized8')
call minpac#add('scrooloose/nerdtree')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-markdown')
call minpac#add('tpope/vim-sensible')
call minpac#add('tpope/vim-sleuth')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('vim-syntastic/syntastic')
call minpac#add('xuyuanp/nerdtree-git-plugin')
