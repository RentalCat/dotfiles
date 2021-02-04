[[ -n $ZSH_DEBUG ]] && zmodload zsh/zprof && zprof

export LANG=ja_JP.UTF-8
export LC_TYPE=ja_JP.UTF-8

export EDITOR=vim

export XDG_CONFIG_HOME=$HOME/dotfiles
export zsh_dir=$XDG_CONFIG_HOME/zsh
export NVIM_PYTHON_LOG_FILE="$XDG_CONFIG_HOME/nvim/.tmp/log"
export NVIM_PYTHON_LOG_LEVEL=DEBUG
export MYCLI_HISTFILE=$XDG_CONFIG_HOME/mycli/.mycli-history

# path
export -U path
# libnsl (for neovim; Ubuntu on Windows only...?)
if [[ ${OSTYPE} == linux* ]]; then
  export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/libnsl/lib"
  export CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/libnsl/include"
fi
## anyenv (python, ruby...)
export ANYENV_ROOT="$HOME/.anyenv"
## nodebrew
export NODEBREW_ROOT="$HOME/.nodebrew"
## go
go_root=$HOME/.go
go_thirdparty_path=$go_root/third-party
go_project_path=$go_root/my-project
export GOPATH=$go_thirdparty_path:$go_project_path
## rustup
export CARGO_HOME=$HOME/.cargo

setopt no_global_rcs
path=(
  $ANYENV_ROOT/bin(N-/)
  $CARGO_HOME/bin(N-/)
  $go_thirdparty_path/bin(N-/)
  $go_project_path/bin(N-/)
  $NODEBREW_ROOT/current/bin(N-/)
  /home/linuxbrew/.linuxbrew/sbin(N-/)
  /home/linuxbrew/.linuxbrew/bin(N-/)
  /usr/local/opt/mysql@5.6/bin(N-/)
  /usr/local/bin(N-/)
  $path
)
export PATH=$(echo $PATH | sed -e "s/ /\\\ /g")  # for windows: path include space escaping
unset go_root go_thirdparty_path go_project_path
