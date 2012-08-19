alias ll='ls -l'
alias gg='git grep'
alias gc='git commit'

c_cyan=`tput setaf 6`
c_red=`tput setaf 1`
c_green=`tput setaf 2`
c_sgr0=`tput sgr0`

parse_git_branch ()
{
   if git rev-parse --git-dir >/dev/null 2>&1
   then
       gitver=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
   else
       gitver='0'
   fi
   echo -e $gitver
}

branch_color ()
{
   if git rev-parse --git-dir >/dev/null 2>&1
   then
       color=""
       if git diff --quiet 2>/dev/null >&2
       then
           color="${c_green}"
       else
           color=${c_red}
           fi
   else
       return 0
   fi
   echo -ne $color
}

get_branch () 
{
    if [ $(parse_git_branch) != '0' ];
    then
	branch="${c_sgr0}[$(branch_color)$(parse_git_branch)${c_sgr0}]"
    else
	return 0
    fi
    echo -ne $branch
}

#PS1='${c_sgr0}\u@${c_red}\w${c_sgr0}[$(branch_color)$(parse_git_branch)${c_sgr0}]: '
#PS1='\u@\w$(get_branch)${c_sgr0}: \'
