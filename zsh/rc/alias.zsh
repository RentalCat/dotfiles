if [[ -x `whence -p ls` ]] then
  case ${OSTYPE} in
    darwin*) alias ls="ls -G -F";;
    linux*)  alias ls="ls --color -F";;
  esac
  alias ll="ls -l"
  alias la="ls -a"
fi
[[ -x `whence -p rm` ]]    && alias rm="rm -iv"
[[ -x `whence -p mkdir` ]] && alias mkdir="mkdir -p"
[[ -x `whence -p tmux` ]]  && alias tmux="tmux -2"

# vim
function nvim_with_anyenv() {
  # pyenv, rbenvが未読込なら読み込む
  if [[ ! -x `whence -p pyenv`  || ! -x `whence -p rbenv` ]] then
    anyenv &> /dev/null  # anyenvを遅延読込してパスを通す
  fi
  nvim "$@"
}
[[ -x `whence -p nvim` ]] && alias vim="nvim_with_anyenv"

# git
if [[ -x `whence -p git` ]] then
  alias g="git"
  alias gst="git status -sbu"
  alias gco="git checkout"
  alias gadd="git add --all"
  alias gcommit="git commit -m"
  alias glogg="git -c color.diff=always log --stat --pretty=format:'%C(cyan)%h %C(green)%ar %C(yellow)%an %C(reset)%s %C(red)%d%C(reset)'"
  alias glog="glogg | head"
  alias gloggraph="git -c color.diff=always log --graph --date-order --pretty=format:'%C(cyan)%h %C(green)%ci %C(yellow)%an %C(blue)%m %C(reset)%s %C(red)%d'"
  function gpush() {
    git push origin $(basename "`git symbolic-ref HEAD 2> /dev/null`")
  }
fi
if [[ -x `whence -p brew` ]] then
  alias brew="env PATH='${PATH/$HOME\/\.anyenv\/envs\/pyenv\/shims(:|)/}' brew"
fi
alias ssh="TERM=xterm ssh"
alias grep="grep -u"
alias cp="cp -i"

# for Ubuntu on Windows
[[ ${OSTYPE} == linux* ]] && alias pbcopy="clip.exe"
