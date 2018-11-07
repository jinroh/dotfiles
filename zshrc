# Oh My Zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="clean"

plugins=(git git-extras)
source $ZSH/oh-my-zsh.sh
export UPDATE_ZSH_DAYS=13
unsetopt AUTO_CD

# Env
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR=s
export PAGER=less

# Aliases
alias g="git"

alias zshconf="$EDITOR ~/.zshrc"

alias ccat="pygmentize -g"

alias l="ls -lh"
alias pf="peerflix -vl"

# Node.js
export NODE_PATH="/usr/local/lib/node_modules"

# Golang
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Rust
export PATH="$HOME/.cargo/bin:${PATH}"

# z
. `brew --prefix`/etc/profile.d/z.sh

# Cowsay
cowsay -f beavis.zen Heeemeeem

function chpwd() {
  if [ -r $PWD/.env ]; then
    source $PWD/.env
  fi
}
