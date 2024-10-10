#!/bin/bash

BASEDIR="$(cd "$(dirname "$SOURCE")" && pwd)"

# settings for vim
ln -si "$BASEDIR/init.vim" ~/.vimrc

# settings for neovim
mkdir -p ~/.config/nvim
ln -si "$BASEDIR/init.vim" ~/.config/nvim/init.vim

# plugins
ln -si "$BASEDIR/dein.toml" ~/.config/nvim/dein.toml
