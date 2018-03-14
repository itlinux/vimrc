Installation:

	git clone https://github.com/itlinux/vimrc

Get prerequisites:

	cd ~/.vim
	git clone https://github.com/k-takata/minpac.git ./pack/minpac/opt/minpac
	pip install -r requirements.txt

Create symlink:

	ln -s ~/.vim/vimrc ~/.vimrc

Install Asciidoctor:
	brew install asciidoctor
	or 
	port install asciidoctor

Install plugins
	
	vim
	:PackUpdate
