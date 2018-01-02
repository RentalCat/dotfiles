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


print_header "Debug: echo env"
env

print_header "Install brew"
if ! $(is_exists 'brew'); then
    if is_ios; then
        # install Homebrew
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        # install Linuxbrew
        printf "\n" | USER=${USER:-$(whoami)} sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
    fi
fi
