if [ -f /etc/bashrc ]; then
  . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

alias findn='find . -name'
alias mkdir='mkdir -p'
alias cp='cp -i'
alias ls='ls -hF --color'
