
export PATH="~/.bin":${PATH}

alias ls="ls --color"
alias la="ls -a"
alias ll="ls -l"

source ${HOME}/.workrc

# Java Related

export JVM_DEBUG_ARGS="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8457"
# start java in debug mode
alias jdbg="java ${JVM_DEBUG_ARGS}"

###
#
# Usage: `filter_branch <keywords>`
#
# To check filtered branches to be dropped.
#
###
filter_branch() {
branch_query=""

for branch_queries in $*; do
  if [ "$branch_query" = "" ];
  then
    branch_query+="${branch_queries}"
  else
    branch_query+="\|${branch_queries}"
  fi
done

git branch | grep "$branch_query"
}


###
#
# Usage: `drop_branch <keywords>`
#
# To remove branches matched with keywords.
#
###
drop_branch() {
  filter_branch $* | xargs git branch -D
}
