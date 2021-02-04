# anyenv
if [[ ! -x `whence -p anyenv` ]] then
  git clone https://github.com/riywo/anyenv ~/.anyenv
fi
function anyenv() {  # for lazyload
  unfunction "$0"
  source <(anyenv init -)
  $0 "$@"
}


# pyenv
if [[ ! -x `whence -p pyenv` ]] then
  anyenv install pyenv
fi
# pyenv virtualenv
pyenv_path="$(pyenv root)/plugins/pyenv-virtualenv"
if [[ ! -e $pyenv_path ]] then
  git clone https://github.com/pyenv/pyenv-virtualenv.git $pyenv_path
fi
function pyenv() {  # for lazyload
  unfunction "$0"
  source <(pyenv virtualenv-init -)
  $0 "$@"
}


# rbenv
if [[ ! -x `whence -p rbenv` ]] then
  anyenv install rbenv
fi
function rbenv() {  # for lazyload
  unfunction "$0"
  source <(rbenv init -)
  $0 "$@"
}


# nodebrew
if [[ ! -x `whence -p nodebrew` ]] then
  brew install nodebrew
  nodebrew setup
fi
