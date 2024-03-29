[[ -n "${ZSH_DEBUG:-}" ]] && zmodload zsh/zprof && zprof

export LANG=ja_JP.UTF-8
export LC_TYPE=ja_JP.UTF-8

export EDITOR=vim

export XDG_CONFIG_HOME=$HOME/dotfiles
export zsh_dir=$XDG_CONFIG_HOME/zsh
export NVIM_PYTHON_LOG_FILE="$XDG_CONFIG_HOME/nvim/.tmp/log"
export NVIM_PYTHON_LOG_LEVEL=DEBUG
export MYCLI_HISTFILE=$XDG_CONFIG_HOME/mycli/.mycli-history

# for gnupg signature
export GPG_TTY=$(tty)

# path
export -U path

if [[ ${OSTYPE} == linux* ]]; then
  # libnsl (for neovim; Ubuntu on Windows only...?)
  export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/libnsl/lib"
  export CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/libnsl/include"
  # ssh-agent (WSL (Ubuntu on Windows) only)
  #eval $(/mnt/c/Program\ Files\ \(x86\)/ssh-agent-wsl/ssh-agent-wsl -r) > /dev/null
fi
## anyenv (python, ruby...)
export ANYENV_ROOT="$HOME/.anyenv"
## nodebrew
export NODEBREW_ROOT="$HOME/.nodebrew"
## go
export GOPATH=$HOME/.go
## rustup
export CARGO_HOME=$HOME/.cargo

setopt no_global_rcs
path=(
  $XDG_CONFIG_HOME/util(N-/)
  $ANYENV_ROOT/bin(N-/)
  $CARGO_HOME/bin(N-/)
  $GOPATH/bin(N-/)
  $NODEBREW_ROOT/current/bin(N-/)
  /home/linuxbrew/.linuxbrew/bin(N-/)
  /home/linuxbrew/.linuxbrew/sbin(N-/)
  /usr/local/opt/mysql@5.6/bin(N-/)
  /usr/local/sbin(N-/)
  /usr/local/bin(N-/)
  $path
)
export PATH=$(echo $PATH | sed -e "s/ /\\\ /g")  # for windows: path include space escaping
