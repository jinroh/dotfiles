# Oh My Zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sporty_256"

plugins=(git git-extras)
source $ZSH/oh-my-zsh.sh
export UPDATE_ZSH_DAYS=13

# Env
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR=vim
export PAGER=less

# Aliases
alias gd="grunt deploy --dev=1"
alias gr="grunt restart"

alias zshconf="$EDITOR ~/.zshrc"

alias nomdns="
  launchctl unload /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist &&
  launchctl unload /System/Library/LaunchDaemons/com.apple.mDNSResponderHelper.plist"

alias mdns="
  launchctl load /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist &&
  launchctl load /System/Library/LaunchDaemons/com.apple.mDNSResponderHelper.plist"

alias tnt="export CANALR7_TARGET=tnt"
alias sat="export CANALR7_TARGET=sat"

alias ccat="pygmentize -g"

alias l="ls -lh"

# Node.js
export PATH="/usr/local/share/npm/bin:$PATH"

# Golang
export GOPATH="$HOME/.go"
export PATH="$GOPATH/bin:$PATH"

# Ruby
eval "$(rbenv init -)"

# z
. `brew --prefix`/etc/profile.d/z.sh

# Cowsay
cowsay -f beavis.zen Heeemeeem
