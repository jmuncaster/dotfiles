# dotfiles
My configuration files

# Requirements

Vim 8.0

sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

# Need to build YouCompleteMe manually.
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python install.py --clang-completer
