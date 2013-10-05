if [ -f /etc/bashrc ]; then
  . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

alias findn='find . -name'
alias mkdir='mkdir -p'
alias cp='cp -i'
alias ls='ls -hF --color'

alias restart-couch='/usr/bin/sudo launchctl stop org.apache.couchdb'
alias start-couch='/usr/bin/sudo launchctl load -w /Library/LaunchDaemons/org.apache.couchdb.plist'
alias stop-couch='/usr/bin/sudo launchctl unload /Library/LaunchDaemons/org.apache.couchdb.plist'

