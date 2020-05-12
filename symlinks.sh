#!/bin/bash

ln -sf $PWD/alacritty/alacritty.yml ~/.alacritty.yml
ln -sf $PWD/bin ~/bin
ln -sf $PWD/conky ~/.config/conky
ln -sf $PWD/nvim ~/.config/nvim

ln -sf $PWD/tmux ~/.tmux
ln -sf $PWD/tmux/.tmux/.tmux.conf ~/.tmux.conf
ln -sf $PWD/tmux/.tmux.conf.local ~/.tmux.conf.local

ln -sf $PWD/zsh/.zshrc ~/.zshrc
ln -sf $PWD/zsh/plugins ~/.oh-my-zsh/custom/plugins

ln -sf $PWD/ssh/config ~/.ssh/config
