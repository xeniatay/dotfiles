### 19-01-08

## SETUP

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load from ~/.oh-my-zsh/themes/
export ZSH_THEME="xeniatay"

# Syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

# oh-my-zsh plugins
plugins=(rails git osx ruby brew gem grunt zsh-syntax-highlighting git-open zsh-autosuggestions history-substring-search)

pathdirs=(
    /usr/local/bin
    /usr/local/sbin
    ~/bin
    ~/sys161/tools/bin
    ~/sys161/bin
    /Applications/Postgres93.app/Contents/MacOS/bin
    /opt/local/bin # BP MacPorts
    /opt/local/sbin # BP MacPorts
    ./node_modules/.bin
    /usr/local/opt/icu4c/bin:$PATH
    /usr/local/opt/icu4c/sbin:$PATH
)

## ZSH OPTIONS

# disable zsh autocorrect prompts, it is so annoying!
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

## MISCELLANEOUS

## VIM Mode - bind 'jk' to esc
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode

# ARC
export EDITOR="vim"
# VIM Mode - bind 'jk' to esc
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode

## Aliases

# local static python server. add portname to command e.g. pyserver 8888
alias pyserver='python -m SimpleHTTPServer' 

# quick nav to directories
alias vgs='cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Vintageous'
alias wp-themes='cd ~/projs/wordpress/wp-content/themes'

# applications
alias chrome="open -a 'Google Chrome'"

# git
alias temp='git commit --no-verify -am "temp"'







#################################################

### Commented out since 19-01-08, TODO: clean up!

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="false"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
#. `brew --prefix`/etc/profile.d/z.sh

# Ignore autocorrect for certain comands
# if [ -f ~/.zsh_nocorrect ]; then
#   while read -r COMMAND; do
#     alias $COMMAND="nocorrect $COMMAND"
#   done < ~/.zsh_nocorrect
# fi

# Autocomplete
# commented out on 190108 
# _my_cpl() {
#     reply=(one two other possibility)
# }
# compctl -K _my_cpl command-name
# zstyle ':completion:*' menu select

# Fixes slow git autocompletion
# commented out on 190108 
# __git_files () {
#     _wanted files expl 'local files' _files
# }

# sshfs
# alias sshfs-488='sshfs xzytay@linux.student.cs.uwaterloo.ca:/u1/xzytay/cs488/ ~/projs/cs488' # CS 488

# ssh
# commented out on 190108 
# alias ssh-cs='ssh xzytay@linux.student.cs.uwaterloo.ca'
# alias ssh-csx='ssh -X xzytay@linux.student.cs.uwaterloo.ca'
# alias ssh-ugster='ssh xzytay@ugster05.student.cs.uwaterloo.ca'
# alias sshfs-ugster='sshfs xzytay@ugster05.student.cs.uwaterloo.ca:/home/xzytay/uml ~/projs/cs458/sshfs' # CS 458


# history search backwards and forwards
# commented out on 190108 
# bindkey '\eOA' history-beginning-search-backward
# bindkey '\e[A' history-beginning-search-backward
# bindkey '\eOB' history-beginning-search-forward
# bindkey '\e[B' history-beginning-search-forward
# bindkey "^R" history-incremental-pattern-search-backward

# bones less
# commented out on 190108 
# alias less-wp='lessc -w less/style.less css/style.css'

# CS 350
# commented out on 190108 
# alias conf-asst2='cd ~/projs/os161-group/os161-1.99/kern/conf; ./config ASST2'
# alias bmake-all='bmake depend; bmake; bmake install'

# fink for CS488
# source /sw/bin/init.sh

# Patreon
# alias patdevx='cd ~/projs/devx/'
# alias patp='cd ~/projs/devx/patreon_py'
# alias patr='cd ~/projs/devx/patreon_react_features'
# alias pata='cd ~/projs/devx/patreon_webclient'
# alias pats='cd ~/projs/patreon_smoketests'

# Python 3 venv stuff
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# Prettier
# alias ptr='git diff --name-only origin/master | grep -E \\.jsx?$ | xargs -t -n1 prettier --write --tab-width 4 --single-quote --trailing-comma all --no-semi'

# mylint() {
#     files="$(git diff --name-only origin/master | grep -E \\.jsx?$)"
#      echo $files
#      echo $files | xargs eslint -c .eslintrc.yml --max-warnings 0 --cache --ignore-pattern './prettier.rc' --fix
# }
# alias lint='npm run lint:fix'
# alias gds='git diff; git status; lint || "Did not lint."'
# alias tail-all="devx-attach 'journalctl -o json -fu devx-* | jq -r \"[._SYSTEMD_UNIT, .MESSAGE] | @tsv\"'"

# Disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Fix for zsh autosuggestions being the same color as active command. This makes it YELLOW
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'

# load nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Keybindings to search through command history using arrow keys for existing prompt text
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down