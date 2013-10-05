# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

#disable autocomplete
source $ZSH/oh-my-zsh.sh
unsetopt correct

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

# Customize to your needs...
## REMOVE: PATH dirs specific to CS350
pathdirs=(
    /usr/local/bin
    /usr/local/sbin
    /Users/Xenia.Tay/.nave/installed/0.6.11/bin
    ~/bin
    /u/cs350/sys161/bin
    /u/cs350/bin
    /u1/xzytay/localcommands
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

# VIM Mode - bind 'jk' to esc
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode

# Aliases
alias vgs='cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Vintageous'


# ZSH syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

# Indochino stuff
alias restart-couch='/usr/bin/sudo launchctl stop org.apache.couchdb'
alias start-couch='/usr/bin/sudo launchctl load -w /Library/LaunchDaemons/org.apache.couchdb.plist'
alias stop-couch='/usr/bin/sudo launchctl unload /Library/LaunchDaemons/org.apache.couchdb.plist'

# deploy indochino
# cap <servername> -S branch="<branchname>" deploy
# /etc/init.d couchdb restart

# setenv
setenv () { typeset -x "${1}${1:+=}${(@)argv[2,$#]}" }

# CS350
setenv CVSROOT ~/cvsroot/cs350
alias os161='~/cs350-os161'
#alias cd-asst1='cd ~/cs350-os161/os161-1.99/kern/compile/ASST1'
#alias bmake-all='bmake depend; bmake; bmake install'

# CS370
alias matlab='matlab -nodesktop -nosplash'

