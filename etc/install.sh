#!/bin/sh
set -eux

_AUTHOR="RentalCat"
_REPOSITORY="dotfiles"
_BRANCH="master"

if [ -z "${DOTPATH:-}" ]; then DOTPATH=~/.dotfiles; fi && export DOTPATH="`cd $DOTPATH && pwd`"
export DOTFILES_GITHUB="git@github.com:$_AUTHOR/$_REPOSITORY.git"


is_exists() {
    type "$1" > /dev/null 2>&1
    return $?
}

dotfiles_download() {
    if [ -d "$DOTPATH" ]; then
        echo "$DOTPATH: already exists"
        exit 1
    fi
    if is_exists "git"; then
        git clone --recursive "$DOTFILES_GITHUB" "$DOTPATH"
    else
        echo "git required. please install git"
        echo "  ref: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git"
        exit 1
    fi
    echo "dotfiles downloaded"
}

dotfiles_deploy() {
    if [ ! -d "$DOTPATH" ]; then
        echo "$DOTPATH: not found"
        exit 1
    fi
    if [ "$(pwd)" = "$DOTPATH" ]; then cd "$DOTPATH"; fi
    make deploy
    echo "deploy done"
}

dotfiles_initialize() {
    if [ ! -d "$DOTPATH" ]; then
        echo "$DOTPATH: not found"
        exit 1
    fi
    if [ "$(pwd)" = "$DOTPATH" ]; then cd "$DOTPATH"; fi
    make init
    echo "initialize done"
}


dotfiles_download && dotfiles_deploy && dotfiles_initialize
