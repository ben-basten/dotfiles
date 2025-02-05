# ----------------------- #
# Oh My Zsh
# ----------------------- #

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/lukechilds/zsh-nvm.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-nvm
plugins=(
    git
    zsh-autosuggestions
    zsh-nvm
)

# ----------------------- #
# Themes
# ----------------------- #

# Edit theme: ~/.oh-my-zsh/themes/candy.zsh-theme
# Change "%X" to "%T" for 24-hour time
ZSH_THEME="candy"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8,underline"

# https://ohmyz.sh/
source $ZSH/oh-my-zsh.sh

# ----------------------- #
# General
# ----------------------- #
alias repo='cd ~/repos'
alias cls='clear'
alias ll='ls -l'
alias la='ls -A'

# reconfigure Git password
alias gitpass='git config --global credential.helper osxkeychain'

# ----------------------- #
# Java
# ----------------------- #

alias home='echo $JAVA_HOME'
export JAVA_HOME=`/usr/libexec/java_home -v 21`
# export JAVA_TOOL_OPTIONS="-Djavax.net.ssl.trustStore=/path/to/cacerts"

# ----------------------- #
# Tools
# ----------------------- #

# https://github.com/todotxt/todo.txt-cli
alias t='todo.sh'

# ----------------------- #
# Git
# ----------------------- #

# Set default GH CLI editor to Neovim
export GH_EDITOR=nvim

alias main='git checkout main && git pull'

# Go to project root
alias grt='cd "$(git rev-parse --show-toplevel)"'

alias gs='git status'
alias gp='git push'
alias gpf='git push --force'
alias gpft='git push --follow-tags'
alias gpl='git pull --rebase'
alias gcl='git clone'
alias gst='git stash'
alias grm='git rm'
alias gmv='git mv'

alias gco='git checkout'
alias gcob='git checkout -b'

alias gb='git branch'
alias gbd='git branch -d'

alias grb='git rebase'
alias grbom='git rebase origin/main'
alias grbc='git rebase --continue'

alias gl='git log'
alias glo='git log --oneline --graph'

alias grh='git reset HEAD'
alias grh1='git reset HEAD~1'
alias grH='git reset --hard'

alias ga='git add'
alias gA='git add -A'

alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gcam='git add -A && git commit -m'
alias gfrb='git fetch origin && git rebase origin/main'

alias gxn='git clean -dn'
alias gx='git clean -df'

alias gsha='git rev-parse HEAD | pbcopy'

# ----------------------- #
# gh GitHub CLI
# https://cli.github.com/
# ----------------------- #

function pr() {
  if [ $1 = "ls" ]; then
    gh pr list
  else
    gh pr checkout $1
  fi
}

alias ghci='gh run list -L 1'

alias ghpcd='gh pr create --draft'
alias ghpc='gh pr create'

# ----------------------- #
# Debian
# ----------------------- #

alias update='sudo apt update && sudo apt upgrade'