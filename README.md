Calpa's vimrc
---

Hello, here is the repo of my vimrc.

## Basic Installation
```
git clone https://github.com/calpa/vimrc.git ~/.vim

ln -s ~/.vim/.vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
```

## Install ale

Before you install ale, you need to upgrade vim to version 8.
```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
vim +PluginInstall +qall
```
