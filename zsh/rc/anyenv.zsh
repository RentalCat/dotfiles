# anyenv
function anyenv() {  # for lazyload
  unfunction "$0"
  if [[ ! -x `whence -p anyenv` ]] then
    git clone https://github.com/riywo/anyenv ~/.anyenv
  fi
  source <(anyenv init -)
  $0 "$@"
}


# pyenv
function pyenv() {  # for lazyload
  unfunction "$0"
  anyenv &> /dev/null  # anyenvを遅延読込してパスを通す
  if [[ ! -x `whence -p pyenv` ]] then
    anyenv install pyenv
  fi
  # pyenv virtualenv
  pyenv_path="$(pyenv root)/plugins/pyenv-virtualenv"
  if [[ ! -e $pyenv_path ]] then
    git clone https://github.com/pyenv/pyenv-virtualenv.git $pyenv_path
  fi
  source <(pyenv virtualenv-init -)
  $0 "$@"
}


# rbenv
function rbenv() {  # for lazyload
  unfunction "$0"
  anyenv &> /dev/null  # anyenvを遅延読込してパスを通す
  if [[ ! -x `whence -p rbenv` ]] then
    anyenv install rbenv
  fi
  source <(rbenv init -)
  $0 "$@"
}


# nodebrew
if [[ ! -x `whence -p nodebrew` ]] then
  if [[ -x `whence -p brew` ]] then
    brew install nodebrew
  else
    curl -L git.io/nodebrew | perl - setup
    export $PATH=$HOME/.nodebrew/current/bin:$PATH  # 初回だけパスが通ってないので通す
  fi
  nodebrew setup
fi
