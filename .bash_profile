alias g='git'
alias e='emacs'
alias ls='ls -G'
alias ll='ls -l'

# Mac specific...
source /usr/local/git/contrib/completion/git-completion.bash

# GIT_PS1_SHOWDIRTYSTATE=true
# GIT_PS1_SHOWSTASHSTATE=true
# GIT_PS1_SHOWUNTRACKEDFILES=true

PS1='⌘ \w$(__git_ps1 " (%s)") '

export PATH=/Users/angusb/bin:$PATH
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar 