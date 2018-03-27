Calpa's vimrc
---

Hello, here is the repo of my vimrc.

## Features
1. Remap <C-W>j, <C-W>k, <C-W>h, <C-W>l as <C-j>, <C-k>, <C-h>, <C-l>
1. Remap mapleader as ","
1. Open NERDTree by ",n"
1. Open GitGutter by ",g"
1. Track coding time by wakatime

### Airline
1. Show Unicode symbol in Airline

### Tmux
1. Show Unicode symbol in Tmux
1. Show personal message in Tmux

### Web-developing
1. Show Unicode symbol in ale
1. Use ale with eslint to lint .js, .vue files
1. Auto fix .js, .vue files on save

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
