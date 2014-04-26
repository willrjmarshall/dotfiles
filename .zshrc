# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
 #export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(rvm zsh-syntax-highlighting git ruby osx brew cake capistrano coffee colorize gem git-flow git-remote-branch github gitignore heroku postgres rails rake vundle)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/willmarshall/.rvm/bin:/Users/willmarshall/.rvm/bin

#LESSPIPE='which src-hilite-lesspipe.sh'
#export LESSOPEN="| ${LESSPIPE} %s"
#export LESS='-R'

# Example aliases
alias zshconfig="mvim ~/.zshrc"
alias ohmyzsh="mvim ~/.oh-my-zsh"
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias gb='git branch'
alias ga='git add'
alias grh='git reset HEAD'
alias gc='git commit'
alias gp='git push'
alias gg='git grep'
alias z='zeus'
alias zs='zeus start'
alias zt='zeus rspec'
alias zc='zeus console'
alias zr='zeus rake'
alias gge='git grep -E "^(\s*)(scenario|describe|context|it) "'
alias ggeb='git grep -E "^(\s*)(scenario|describe|context|) "'

unsetopt correct_all

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
