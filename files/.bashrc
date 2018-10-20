
export PATH="~/.bin":${PATH}

alias ls="ls --color"
alias la="ls -a"
alias ll="ls -l"

source ${HOME}/.workrc

# Java Related

export JVM_DEBUG_ARGS="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8457"
# start java in debug mode
alias jdbg="java ${JVM_DEBUG_ARGS}"
