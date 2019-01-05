
Based and credit to DSelders's repo. 

Installation:

	git clone https://github.com/itlinux/vimrc ~/.vim

Get prerequisites:

	## For Mac 
	cd ~/.vim
	git clone https://github.com/k-takata/minpac.git ./pack/minpac/opt/minpac
	pip install -r requirements.txt
	## For Linux


Create symlink:

  	## For Mac 
	ln -s ~/.vim/vimrc ~/.vimrc-mac
	## For Linux (CentOS7)
	ln -s ~/.vim/vimrc-linux

Install Asciidoctor:

	# For Mac 
	brew install asciidoctor
	or 
	port install asciidoctor

Install plugins
	
	vim
	:PackUpdate
Undo

Folders Needed:
	~/.vim/.undo/


