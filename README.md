# Personal VIM config

## Instructions

    $ git clone git@github.com:patux/CalVIM.git ~/.vim
    $ ln -s ~/.vim/.vimrc ~/.vimrc
    $ cd ~/.vim
    $ git submodule init
    $ git submodule update
    $ vim +BundleInstall +qall
    $ cd bundle/YouCompleteMe/ && install.sh

### Install extra packages (Optional)
    $ sudo apt-get install `cat ~/.vim/apt-packages.txt`
