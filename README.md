# A django IDE using Vim

## Instructions
    $ git clone git@github.com:patux/CalVIM.git ~/.vim
    $ ln -s ~/.vim/.vimrc ~/.vimrc
    $ cd ~/.vim
    $ git submodule init
    $ git submodule update
    $ vim +BundleInstall +qall

### Install extra packages (Optional)
    $ sudo apt-get install `cat ~/.vim/apt-packages.txt`

## This is a vim configuration customized for python/django/html/javascript editing.

### Notable features include:

* Django/html snippets using snipmate. Eliminates a lot of boilerplate code.

* Jump from `urls.py` to `views.py` to template using vimango.

* Navigate using nerdtree, see tags using taglist

* Syntax highlighting for django templates.
