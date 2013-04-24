# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="sporty_256"

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias nomdns="
  launchctl unload /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist &&
  launchctl unload /System/Library/LaunchDaemons/com.apple.mDNSResponderHelper.plist"

alias mdns="
  launchctl load /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist &&
  launchctl load /System/Library/LaunchDaemons/com.apple.mDNSResponderHelper.plist"

alias tnt="export CANAL_ENV=tnt"
alias sat="export CANAL_ENV=sat"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=13

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Aliases
source ~/.aliases

# Ruby
eval "$(rbenv init -)"

# z
. `brew --prefix`/etc/profile.d/z.sh

cowsay -f beavis.zen Heeemeeem
