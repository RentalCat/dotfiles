#!/bin/bash
set -Ceuo pipefail

readonly USER_NAME=vagrant
add-apt-repository ppa:neovim-ppa/stable
apt-get update
apt-get install -y zsh neovim git-lfs

# install tmux
(
  apt-get install -y git automake bison build-essential pkg-config libevent-dev libncurses5-dev
  git clone https://github.com/tmux/tmux /usr/local/src/tmux
  cd /usr/local/src/tmux
  ./autogen.sh
  ./configure --prefix=/usr/local
  make
  make install
  tmux -V
)

# set TimeZone
timedatectl set-timezone Asia/Tokyo

chsh -s $(which zsh) $USER_NAME

sudo -u $USER_NAME --set-home ./dotfiles/etc/startup/deploy.sh
