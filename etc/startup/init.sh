#!/bin/bash
set -eu


print_header() {
    local _cols=$(tput cols 2> /dev/null || true)
    local str="-- $* --"
    local hr=`for i in $(seq  0 $(expr ${_cols:-80} - ${#str} - 1)); do printf "-"; done`
    printf "\n\033[37;1m%s\033[m\n" "$str$hr"
}

get_os() {
    if [[ "$(uname)" == 'Darwin' ]]; then
        echo "ios"
    elif [[ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]]; then
        echo "linux"
    elif [[ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]]; then
        echo cygwin
    else
        echo "unknown"
    fi
}

is_exists() {
    type "$1" > /dev/null 2>&1
    return $?
}

is_ios() {
    [[ "$(get_os)" == "ios" ]]
    return $?
}

safe_install() {
    printf "\033[37;1m%s\033[m\n" "Install: $1"
    if $(is_exists $1); then
        printf "\033[1;33m$1 is already existed. overriding...\033[m\n"
        brew install $1 || true
        brew link --overwrite $1
    else
        brew install $1
    fi
}


export TERM=xterm-256color

print_header "Locate settings"
locale_source="ja_JP"
locale_charmap="UTF-8"
my_locale="$locale_source.$locale_charmap"
if [ "${LANG:-}" != $my_locale ]; then
    if [ -z "$(locale -a | grep $my_locale)" ]; then
        if [ ! -d /usr/share/i18n/charmaps ]; then
            # download langpack
            if $(is_exists "apt-get"); then
                # for Ubuntu
                sudo apt-get install -y language-pack-ja
            else
                echo "Error: langpack not installed"
                exit 1
            fi
        fi
        # set language
        sudo localedef -f $locale_charmap -i $locale_source $my_locale
    fi
    export LC_ALL=$my_locale
    export LANG=$my_locale
fi

print_header "Install brew"
if ! $(is_exists "brew"); then
    if is_ios; then
        # install Homebrew
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        # install Linuxbrew
        export PATH=/home/linuxbrew/.linuxbrew/sbin:/home/linuxbrew/.linuxbrew/bin:$PATH
        printf "\n" | USER=${USER:-$(whoami)} sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
    fi
fi

print_header "Update brew"
brew update
print_header "Install gcc"
safe_install gcc
print_header "Install git"
safe_install git

print_header "Install missing packages"
brew missing | awk '{print $2}' | while read pkg; do safe_install $pkg; done
print_header "Brew doctor"
brew doctor || true
print_header "Debug: echo PATH"
echo $PATH
