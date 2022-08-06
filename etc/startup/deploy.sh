#!/bin/bash
set -eu

REPOSITORY_ROOT=$(cd $(dirname $0)/../../ && pwd)

# zsh
ln -fsv $REPOSITORY_ROOT/zsh/.zshrc $HOME/.zshrc
ln -fsv $REPOSITORY_ROOT/zsh/.zshenv $HOME/.zshenv

# vim
# ln -fsv $REPOSITORY_ROOT/vim/ $HOME/.vim
# ln -fsv $REPOSITORY_ROOT/vim/.vimrc $HOME/.vimrc

# tmux
ln -fsv $REPOSITORY_ROOT/tmux/.tmux.conf $HOME/.tmux.conf
ln -fsv $REPOSITORY_ROOT/tmux/local.conf $REPOSITORY_ROOT/tmux/env.conf

# git
ln -fsv $REPOSITORY_ROOT/.gitconfig $HOME/.gitconfig

# global (gtags)
ln -fsv $REPOSITORY_ROOT/globalrc $HOME/.globalrc

# mycli
ln -fsv $REPOSITORY_ROOT/mycli/.myclirc $HOME/.myclirc

# tig
ln -fsv $REPOSITORY_ROOT/tig/tigrc $HOME/.tigrc
