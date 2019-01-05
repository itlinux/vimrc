
Based and credit to DSelders's repo.

# Installation:

	git clone https://github.com/itlinux/vimrc ~/.vim

Get prerequisites:

## For Mac
	cd ~/.vim
	git clone https://github.com/k-takata/minpac.git ./pack/minpac/opt/minpac
	pip install -r requirements.txt

## For Linux
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	pip install -r requirements.txt

# Create symlink:

## For Mac
	ln -s ~/.vim/vimrc-mac ~/.vimrc

## For Linux (CentOS7)
	ln -s ~/.vim/vimrc-linux ~/.vimrc

## Install Asciidoctor:

	# For Mac
	brew install asciidoctor
	or
	port install asciidoctor

# Install plugins

## For Mac
	vim
	:PackUpdate
## For Linux
        vim
        :PluginUpdate

## Undo
        Folders Needed:
        mkdir ~/.vim/.undo/
