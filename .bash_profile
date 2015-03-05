
export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:/usr/local/mysql/bin:/usr/local/heroku/bin:$PATH"
#export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

#. $HOME/.completions/git-completion.bash
export GIT_PS1_SHOWDIRTYSTATE=y
export GIT_PS1_SHOWSTASHSTATE=y
export GIT_PS1_SHOWUNTRACKEDFILES=y
export GIT_PS1_SHOWUPSTREAM="auto verbose"

export PS1='\[\e[33;40m\][$(date "+%H:%M")] \w \[\e[35;40m\]$(__git_ps1 "[%s]")\[\e[33;1m\]> \[\e[0m\]'

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

alias db='rails dbconsole'
alias pry='pry -r ./config/environment'
alias rm='rm -i'
alias reload='source ~/.bash_profile'
alias pgs='postgres -D /usr/local/var/postgres'

eval "$(rbenv init -)"

[ -s "/Users/michaelimstepf/.scm_breeze/scm_breeze.sh" ] && source "/Users/michaelimstepf/.scm_breeze/scm_breeze.sh"