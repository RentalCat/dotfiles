[[ -n $ZSH_DEBUG ]] && zmodload zsh/zprof && zprof
# keybind
bindkey -d
bindkey -e

# color
autoload colors
colors

export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# alias
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
[[ -x `whence -p nvim` ]]  && alias vim="nvim"
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
  alias brew="env PATH=${PATH/$HOME\/\.pyenv\/shims(:|)/} brew"
fi
alias ssh="TERM=xterm ssh"

# prompt
if [[ -r $zsh_dir/prompt.zsh ]]; then
  source $zsh_dir/prompt.zsh
fi

# completion
autoload -Uz compinit
compinit -d $zsh_dir/.zcompdump
zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select=2
zstyle ':completion:*:messages' format "%F{yellow}%d%f"
zstyle ':completion:*:warnings' format "%F{red}No matches for:%F{yellow} %d%f"
zstyle ':completion:*:descriptions' format "%F{yellow}completing %B%d%b%f"
zstyle ':completion:*:corrections' format "%F{yellow}%B%d %F{red}(errors: %e)%b%f"
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' keep-prefix
zstyle ':completion:*' completer _oldlist _complete _match _ignored _approximate _list _history
zstyle ':completion:*' list-separator '-->'

# plugin
export ZPLUG_HOME=$zsh_dir/.zplug
if [[ ! -d $ZPLUG_HOME ]]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh 
fi
source $ZPLUG_HOME/init.zsh

# fzf: インタラクティブフィルタ
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf, frozen:1

# zsh のコマンドラインに色付けをする
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# 補完ファイル (dockerやjq等、デフォルトで補完されない内容をカバー)
zplug "zsh-users/zsh-completions"

# インクリメンタル補完をサポート
zplug "zsh-users/zsh-autosuggestions", use:zsh-autosuggestions.zsh

# 256色対応化
zplug "chrissicool/zsh-256color"

# コードサーチツール, agの進化版
zplug "monochromegane/the_platinum_searcher", as:command, from:gh-r, rename-to:"pt", frozen:1

# b4b4r07/history
# zplug 'b4b4r07/history', use:misc/zsh/init.zsh
# ZSH_HISTORY_KEYBIND_GET_BY_DIR="^r"
# ZSH_HISTORY_KEYBIND_GET_ALL="^r"
# ZSH_HISTORY_KEYBIND_ARROW_UP="^p"
# ZSH_HISTORY_KEYBIND_ARROW_DOWN="^n"
#source $zsh_dir/zsh-history/misc/zsh/init.zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
# zplug load --verbose

HISTFILE=$zsh_dir/cmd_history
HISTSIZE=1000000
SAVEHIST=1000000
# zstyle ':filter-select' max-lines 10
zstyle ':filter-select' case-insensitive yes
zstyle ':filter-select' hist-find-no-dups yes
zstyle ':filter-select' extended-search yes

# Macで時間のかかるコマンドが終わったら、自動で通知するzsh設定
#if [[ `which terminal-notifier > /dev/null 2>&1; echo $?` -eq 0 ]]; then
#  export SYS_NOTIFIER="`which terminal-notifier`"  # terminal-notifierコマンドのパス
#  export NOTIFY_COMMAND_COMPLETE_TIMEOUT=10        # 「時間のかかるコマンド」と判断する実行時間(秒)
#  source $zsh_dir/zsh-notify/notify.plugin.zsh
#else
#  echo "terminal-notifier is not found."
#  echo "please \`brew install terminal-notifier; brew install reattach-to-user-namespace\`"
#fi

# settings
# general
setopt interactive_comments                      # '#' 以降をコメントとして扱う
setopt nolistbeep                                # ビープ音なし
setopt no_flow_control                           # フリーコントロールを無効にする
setopt print_eight_bit                           # 日本語ファイル名を表示可能にする

# history
setopt share_history                             # ヒストリーを共有する
setopt hist_ignore_all_dups                      # 同じコマンドを繰り返している時に履歴を記録しない
#setopt hist_save_no_dups                         # 重複するコマンドが保存される時、古い方を削除する
#setopt hist_expire_dups_first                    # 古い履歴を削除する必要がある場合、まず重複しているものから削除する
setopt hist_ignore_space                         # 初めにスペースが有る場合は記録しない
setopt hist_reduce_blanks                        # 履歴記録時に余分な空白は削除する
setopt hist_find_no_dups                         # 履歴検索で重複しているものを表示しない
setopt hist_no_store                             # historyコマンドは除去する
setopt hist_expand                               # 補完時にヒストリを自動的に展開
setopt extended_history                          # 履歴に開始時刻や実行時間を記録
setopt inc_append_history                        # 履歴をインクリメンタルに追加

# completation
setopt always_last_prompt                        # 補完のときプロンプトの位置を変えない
setopt auto_list                                 # 補完候補を一覧表示
setopt auto_menu                                 # TAB で順に補完候補を切り替える
setopt complete_in_word                          # カーソルの位置に補なうことで単語を完成させようとする
setopt complete_aliases                          # alias でも補完する
# setopt correct                                   # タイプミス修正
setopt listpacked                                # 予測リストを詰めて表示
setopt list_packed                               # 補完候補を詰めて表示
setopt list_types                                # 補完候補を種別表示
setopt magic_equal_subst                         # = 後のパスも補完する
setopt rec_exact                                 # 補完の決めつけ防止

# cd
setopt auto_cd                                   # cdを抜いても動作するように設定
setopt auto_pushd                                # 「cd -[TAB]」でディレクトリリストを表示
setopt auto_param_slash                          # ディレクトリ名の補完で末尾の / を自動的に付加
setopt auto_remove_slash                         # 補完時にスラッシュが2回続いた場合、1つ取り除く
setopt pushd_ignore_dups                         # 重複したディレクトリを追加しない

# wordstyle
autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " _-./;@"
zstyle ':zle:*' word-style unspecified

# command_not_found_handler : typo したときにコマンドをヒストリに記録しない
# command_not_found_handler()
# {
#     # echo "command_not_found_handler called: $0"
#     # sed -i "/^\(:[0-9 ]*:[0-9 ]*;\|\)$*$/d" $HISTFILE
#     # source $zsh_dir/zaw/zaw.zsh
#     return 127
# }

# keybind
bindkey "^[[1;5A" beginning-of-line
# bindkey "^[[1;5B" end-of-line
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# pyenv
[[ -x `which pyenv > /dev/null 2>&1` ]] && eval "$(pyenv init -)"

# rbenv
# [[ -x `which rbenv` ]] && eval "$(rbenv init -)"

# show-current-dir-as-window-name() {
#     [[ -x `whence -p tmux` ]] && tmux rename-window "`echo ${PWD} | sed -e \"s,$HOME/,~/,\"`" > /dev/null
# }
#
# add-zsh-hook chpwd show-current-dir-as-window-name

if (which zprof > /dev/null 2>&1) ;then
  zprof
fi
