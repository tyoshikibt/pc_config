#プロファイル
export PS1="%F{green}%~
$%f "

#ディレクトリパス
export yoshiki="/cygdrive/c/Users/yoshiki"
export program="/cygdrive/c/Users/yoshiki/program"
export homepage="/cygdrive/c/Users/yoshiki/program/homepage/setList/public_html/html/19"

#パス
export PATH="/cygdrive/c/Users/yoshiki/Anaconda3":$PATH
export PATH=$PATH:"/cygdrive/c/Go/bin"
export PATH=$PATH:"/usr/bin/"
export PATH=$PATH:"/cygdrive/c/Users/yoshiki/Desktop/tools/apache-maven-3.6.3/bin"
export PATH=$PATH:"/cygdrive/c/Users/yoshiki/Desktop/tools/gradle-6.4/bin"

#export GOROOT="/cygdrive/c/Go"
export eclipse=/cygdrive/c/Users/yoshiki/eclipse-workspace
cdls ()
{
    \cd "$@" && ls --color -t -F
}
alias cd="cdls"
alias cyg="cygstart"

alias l="ls --color -t -F"
alias em='emacsclient -nw -a ""'
alias ekill='emacsclient -e "(kill-emacs)"'
#java
alias java="java -Duser.language=ja -Dfile.encoding=UTF-8"
alias javac="javac -J-Dfile.encoding=UTF-8"

#sudo
if [[ -n "$PS1" ]]; then
    __sudo_cygwin() {
        local executable=$(which "${1:-cmd}")
        shift
        /usr/bin/cygstart --action=runas "$executable" "$@"
    }

    if [[ -x "/usr/bin/cygstart" ]]; then
        alias sudo=__sudo_cygwin
    fi
fi

#ディレクトリ名を入力するだけで移動
setopt auto_cd

# 移動したディレクトリを記録しておく。"cd -[Tab]"で移動履歴を一覧
setopt auto_pushd

# コマンド訂正
setopt correct

# 補完候補を詰めて表示する
setopt list_packed

# 名前で色を付けるようにする
autoload colors
colors

# LS_COLORSを設定しておく
export LS_COLORS='di=01;36:ln=35:fi=37'

# ファイル補完候補に色を付ける
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

#\cd /cygdrive/c/Users/yoshiki/program

HISTSIZE=100000

#git補完
#fpath=(~/.zsh/completion $fpath)
#autoload -U compinit
#compinit -u

#tmux起動
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux

#pbcopy,putclip
alias pbcopy='cat >/dev/clipboard'
alias pbpaste='cat /dev/clipboard'

#cocot(cygwin文字化け対策)
alias ipconfig='cocot ipconfig'
alias ping='cocot ping'
alias netstat='cocot netstat'
