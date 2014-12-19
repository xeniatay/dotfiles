# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="xeniatay"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="false"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git osx ruby brew gem grunt zsh-syntax-highlighting)

# disable fecking autocorrect
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
pathdirs=(
    /usr/local/bin
    /usr/local/sbin
    /Users/Xenia.Tay/.nave/installed/0.6.11/bin
    ~/bin
    ~/sys161/tools/bin
    ~/sys161/bin
    /Applications/Postgres93.app/Contents/MacOS/bin
    /usr/local/arcanist/bin # BP arcanist
    /opt/local/bin # BP MacPorts
    /opt/local/sbin # BP MacPorts
    /Applications/maven/bin # BP maven
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
alias wp-themes='cd ~/projs/wordpress/wp-content/themes'

# ZSH syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

# sshfs
alias sshfs-350='sshfs xzytay@linux.student.cs.uwaterloo.ca:/u1/xzytay/cs350-os161/ ~/projs/os161-cs350' # CS 350
alias sshfs-341='sshfs xzytay@linux.student.cs.uwaterloo.ca:/u1/xzytay/cs341/ ~/projs/cs341' # CS 341

# ssh
alias ssh-cs='ssh xzytay@linux028.student.cs.uwaterloo.ca'
alias ssh-csx='ssh -X xzytay@linux028.student.cs.uwaterloo.ca'

# BandPage env variables
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home/"
export CATALINA_HOME=/opt/local/apache-tomcat-7.0.42
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
export WEB_ENVIRONMENT=local
export WEB_ENV="localhost"

# ARC
export EDITOR="vim"

# history search backwards and forwards
bindkey '\eOA' history-beginning-search-backward
bindkey '\e[A' history-beginning-search-backward
bindkey '\eOB' history-beginning-search-forward
bindkey '\e[B' history-beginning-search-forward

# howto arcanist and rebaaase
alias phab='echo "-- changes need to be made to diff --

$ git commit --amend // Amend your previous commit.
$ arc diff // Update your existing Phabricator diff.

-- get diff approved -- 

$ arc amend // Close the diff in Phabricator.
$ git checkout s/XX // Checkout the current sprint branch.
$ git pull // Get the latest code.
$ git co my-feature // Switch back to your branch.
$ git rebase s/XX // Rebase the latest code into your branch.

… deal with any merge conflicts that may arise …

$ git co s/XX // Checkout the current sprint branch.
$ git merge my-feature // Perform a fast-forward merge.
$ git push origin s/XX // Have a beer."'

alias apache-start='sudo /opt/local/apache2/bin/apachectl start'
alias apache-stop='sudo /opt/local/apache2/bin/apachectl stop'
alias apache-restart='sudo /opt/local/apache2/bin/apachectl restart'
alias mysql-start='sudo /opt/local/bin/mysqld_safe5 &'
alias mysql-stop='sudo /opt/local/bin/mysqladmin5 -u root -p shutdown'
alias bp-fs='echo "> memcached -d 
> start apache
> start mysql
> [api] mvn clean tomcat7:run 
> [api-core] mvn clean compile;\ mvn -Dflyway.outOfOrder=true compile flyway:migrate;\ mvn install -DskipTests=true
> [load-balancer] sudo npm start 
> [node-www] npm start 
> hawthorn"'

