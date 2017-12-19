#!/bin/sh
set -eu

_AUTHOR="RentalCat"
_REPOSITORY="dotfiles"
_BRANCH="master"

if [ -z "${DOTPATH:-}" ]; then export DOTPATH=~/.dotfiles; fi
export DOTFILES_GITHUB="https://github.com/$_AUTHOR/$_REPOSITORY.git"


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
    local dotabs="$(cd $DOTPATH && pwd)"
    if [ ! -d "$dotabs" ]; then
        echo "$dotabs: not found"
        exit 1
    fi
    if [ "$(pwd)" != "$dotabs" ]; then cd "$dotabs"; fi
    make deploy
    echo "deploy done"
}

dotfiles_initialize() {
    local dotabs="$(cd $DOTPATH && pwd)"
    if [ ! -d "$dotabs" ]; then
        echo "$dotabs: not found"
        exit 1
    fi
    if [ "$(pwd)" != "$dotabs" ]; then cd "$dotabs"; fi
    make init
    echo "initialize done"
}


dotfiles_download && dotfiles_deploy && dotfiles_initialize
