#!/bin/sh
set -eux

get_os() {
    if [ "$(uname)" == 'Darwin' ]; then
        echo "ios"
    elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
        echo "linux"
    elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
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
    [ "$(get_os)" == "ios" ]
    return $?
}


if [ ! $(is_exists 'brew') ]; then
    if [ is_ios ]; then
        # install Homebrew
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        # install Linuxbrew
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
    fi
fi
