alias ll='ls -l'
alias gg='git grep'
alias gc='git commit'
alias e='emacs'

# Borrowed from Mark Otto
export PS1='\e[0:35m⌘\e[m \e[0:36m\w/\e[m \e[0:33m`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`\e[m'

export PATH=/Users/angusb/bin:$PATH
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar 