Installation:

	git clone https://github.com/dselders/vim8.git

Get prerequisites:

	cd ~/.vim
	git clone https://github.com/k-takata/minpac.git ./pack/minpac/opt/minpac
	pip install -r requirements.txt

Create symlink:

	ln -s ~/.vim/vimrc ~/.vimrc

Install plugins
	
	vim
	:PackUpdate
