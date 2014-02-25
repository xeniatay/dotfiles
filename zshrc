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
CASE_SENSITIVE="false"

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
    ~/sys161/tools/bin
    ~/sys161/bin
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

# bones less
alias less-wp='lessc -w less/style.less css/style.css'

# CS 350
alias conf-asst2='cd ~/projs/os161-group/os161-1.99/kern/conf; ./config ASST2'
alias bmake-all='bmake depend; bmake; bmake install'

# wanderable
alias startdj='./script/delayed_job start'
alias stopdj='./script/delayed_job stop'
alias logdj='less log/delayed_job.log'
alias beta-migrate='heroku run rake db:migrate --app wanderable-beta'
alias bal='echo "Routing Number  Account Number  Scenario
100000007 8887776665555 Invalid Routing Number
111111118 8887776665555 Invalid Routing Number
021000021 9900000000  Transitions state to pending
321174851 9900000001  Transitions state to pending
021000021 9900000002  Transitions state to paid (credits) or succeeded (debits)
321174851 9900000003  Transitions state to paid (credits) or succeeded (debits)
021000021 9900000004  Transitions state to failed
321174851 9900000005  Transitions state to failed

https://docs.balancedpayments.com/current/#test-bank-account-numbers

Card Brand  Number  Security Code Result
VISA  4111111111111111  123 SUCCESS
MasterCard  5105105105105100  123 SUCCESS
AMEX  341111111111111 1234  SUCCESS
VISA  4444444444444448 [1]  123 SIMULATE PROCESSOR FAILURE
VISA  4222222222222220 [2]  123 SIMULATE TOKENIZATION ERROR
[1] Simulate a card which can be tokenized but will not be accepted for creating holds or debits. This type of failure is what you would expect if you try to create a hold on a card with insufficient funds.
[2] To simulate a card which cannot be tokenized but passes a LUHN check. You could expect this failure when a user tried to enter in a credit card which used to work but has been canceled.

https://docs.balancedpayments.com/current/#test-credit-card-numbers"'

# wanderable-beta
# heroku run rake db:migrate --app wanderable-beta
# heroku run console -a wanderable-beta
# git remote add wanderable-beta git@heroku.com:wanderable-beta.git
# git push wanderable-beta merchant_portal:master
alias howtobeta='echo "git push wanderable-beta branch:master"'
