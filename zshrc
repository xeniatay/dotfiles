# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="xeniatay"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git osx ruby brew gem grunt zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
pathdirs=(
    /usr/local/bin
    /usr/local/sbin
    /Users/Xenia.Tay/.nave/installed/0.6.11/bin
    ~/bin
)
for dir in $pathdirs; do
    if [ -d $dir ]; then
        path+=$dir
    fi
done

#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
#. `brew --prefix`/etc/profile.d/z.sh

# Ignore autocorrect for certain comands
if [ -f ~/.zsh_nocorrect ]; then
  while read -r COMMAND; do
    alias $COMMAND="nocorrect $COMMAND"
  done < ~/.zsh_nocorrect
fi

# Autocomplete
_my_cpl() {
    reply=(one two other possibility)
}
compctl -K _my_cpl command-name
zstyle ':completion:*' menu select

# Fixes slow git autocompletion
__git_files () {
    _wanted files expl 'local files' _files
}

alias restart-couch='/usr/bin/sudo launchctl stop org.apache.couchdb'
alias start-couch='/usr/bin/sudo launchctl load -w /Library/LaunchDaemons/org.apache.couchdb.plist'
alias stop-couch='/usr/bin/sudo launchctl unload /Library/LaunchDaemons/org.apache.couchdb.plist'
alias vgs='cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Vintageous'

# deploy indochino
# cap <servername> -S branch="<branchname>" deploy
# /etc/init.d couchdb restart
