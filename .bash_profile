alias g='git'
alias e='emacs'
alias ls='ls -G'
alias ll='ls -l'

# Git > 1.8.1.3
source /usr/local/git/contrib/completion/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true

PS1='⌘ \w$(__git_ps1 " (%s)") '

# Default Mountain Lion Path is /usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
# XTools has a default installation of Git in /usr/bin. We want to use the
# updated version instead, so overwrite the PATH

export PATH=/Users/angusb/bin:/usr/local/git/bin:$PATH
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
