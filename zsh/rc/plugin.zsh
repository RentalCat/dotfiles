# tmuxの外ではプラグインを起動させない
if [[ -z "$TMUX" ]]; then
  return
fi

# zplugin初期化処理
export ZINIT_HOME=$zsh_dir/.zinit
if [[ ! -d $ZINIT_HOME ]]; then
  mkdir -p $ZINIT_HOME
  git clone https://github.com/zdharma/zinit.git $ZINIT_HOME/bin
fi
source $ZINIT_HOME/bin/zinit.zsh
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zplugin]=_zplugin  # compinit 宣言後に必要な定義

# fzf: インタラクティブフィルタ
zinit ice from"gh-r" as"program" mv"fzf-* -> fzf"
zinit light "junegunn/fzf-bin"

zinit ice as"program"
zinit light "junegunn/fzf"

# anyframe (Anything風インターフェース)
zinit light "mollifier/anyframe"

# jq: json整形コマンド
zinit ice from"gh-r" as"program" mv"jq* -> jq"
zinit light "stedolan/jq"

# zsh のコマンドラインに色付けをする
zinit light "zdharma/fast-syntax-highlighting"

# 補完ファイル (dockerやjq等、デフォルトで補完されない内容をカバー)
zinit light "zsh-users/zsh-completions"

# インクリメンタル補完をサポート
zinit light "zsh-users/zsh-autosuggestions"

# 256色対応化
zinit light "chrissicool/zsh-256color"

# コードサーチツール, agの進化版
zinit ice from"gh-r" as"program" mv"the_platinum_searcher -> pt" pick"*/pt"
zinit light "monochromegane/the_platinum_searcher"

# cd 強化 (required: fzy, fzf, peco, or...)
zinit light "b4b4r07/enhancd"
