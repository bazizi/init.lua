#!/bin/bash
sudo apt-get install ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim.git
cd neovim && git checkout v0.9.5 && make CMAKE_BUILD_TYPE=RelWithDebInfo && sudo make install

# get packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

mkdir ~/.config/ && cd ~/.config/
git clone https://github.com/bazizi/init.lua.git
mv init.lua nvim
