export LANG=ja_JP.UTF-8

export EDITOR=vim

export XDG_CONFIG_HOME=$HOME/dotfiles
export zsh_dir=$XDG_CONFIG_HOME/zsh
export NVIM_PYTHON_LOG_FILE="$XDG_CONFIG_HOME/nvim/.tmp/log"
export NVIM_PYTHON_LOG_LEVEL=DEBUG

# path
export -U path
export PYENV_ROOT="$HOME/.pyenv"
export NODEBREW_ROOT="$HOME/.nodebrew"
go_root=$HOME/.go
go_thirdparty_path=$go_root/third-party
go_project_path=$go_root/my-project
export GOPATH=$go_thirdparty_path:$go_project_path
setopt no_global_rcs
path=(
  $PYENV_ROOT/bin(N-/)
  $PYENV_ROOT/shims(N-/)
  $go_thirdparty_path/bin(N-/)
  $go_project_path/bin(N-/)
  $NODEBREW_ROOT/current/bin(N-/)
  /usr/local/opt/mysql@5.6/bin(N-/)
  /usr/local/bin(N-/)
  $path
)
unset go_root go_thirdparty_path go_project_path

# The next line updates PATH for the Google Cloud SDK.
# source "$HOME/google-cloud-sdk/path.zsh.inc"

# The next line enables shell command completion for gcloud.
# source "$HOME/google-cloud-sdk/completion.zsh.inc"

# tmux auto attach
# if [ -z $WINDOW ] && [ -z $TMUX ]; then
#   if which tmux >/dev/null; then
#     #if not inside a tmux session, and if no session is started, start a new session
#     test -z $TMUX && (tmux a -t default || tmux new-session -s default)
#   fi
# fi