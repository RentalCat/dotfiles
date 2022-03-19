# anyenv
if [[ ! -x `whence -p anyenv` ]]; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
  exec $SHELL -l
fi
source <(anyenv init -)
# function anyenv() {  # for lazyload
#   unfunction "$0"
#   if [[ ! -x `whence -p anyenv` ]]; then
#     git clone https://github.com/riywo/anyenv ~/.anyenv
#     exec $SHELL -l
#   fi
#   source <(anyenv init -)
#   $0 "$@"
# }


# pyenv
function pyenv() {  # for lazyload
  unfunction "$0"
  # anyenv &> /dev/null  # anyenvを遅延読込してパスを通す
  if [[ ! -x `whence -p pyenv` ]]; then
    anyenv install pyenv
    exec $SHELL -l
  fi
  # pyenv virtualenv
  pyenv_path="$(pyenv root)/plugins/pyenv-virtualenv"
  if [[ ! -e $pyenv_path ]]; then
    git clone https://github.com/pyenv/pyenv-virtualenv.git $pyenv_path
    exec $SHELL -l
  fi
  source <(pyenv init --path)
  source <(pyenv virtualenv-init -)
  $0 "$@"
}


# rbenv
function rbenv() {  # for lazyload
  unfunction "$0"
  # anyenv &> /dev/null  # anyenvを遅延読込してパスを通す
  if [[ ! -x `whence -p rbenv` ]]; then
    anyenv install rbenv
    exec $SHELL -l
  fi
  source <(rbenv init -)
  $0 "$@"
}

# nodenv
if [[ ! -x `whence -p nodenv` ]]; then
  anyenv install nodenv
  exec $SHELL -l
fi
source <(nodenv init -)
# function nodenv() {  # for lazyload
#   unfunction "$0"
#   anyenv &> /dev/null  # anyenvを遅延読込してパスを通す
#   if [[ ! -x `whence -p nodenv` ]]; then
#     anyenv install nodenv
#     exec $SHELL -l
#   fi
#   # nodenv install "$(nodenv install -l | grep -e "^[0-9.]\+$" | tail -n1)"
#   source <(nodenv init -)
#   $0 "$@"
# }
# function npm() {  # for lazyload
#   unfunction "$0"
#   if [[ ! -x `whence -p nodenv` ]]; then
#     nodenv &> /dev/null
#   fi
#   $0 "$@"
# }
