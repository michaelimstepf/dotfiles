# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# rbenv
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"

# MySQL
export PATH="/usr/local/mysql/bin:$PATH"
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# Andy's Git completions
. $HOME/.completions/git-completion.bash
export GIT_PS1_SHOWDIRTYSTATE=y
export GIT_PS1_SHOWSTASHSTATE=y
export GIT_PS1_SHOWUNTRACKEDFILES=y
export GIT_PS1_SHOWUPSTREAM="auto verbose"
export PS1='\[\e[33;40m\][$(date "+%H:%M")] \w \[\e[35;40m\]$(__git_ps1 "[%s]")\[\e[33;1m\]> \[\e[0m\]'

# SCM Git completions
[ -s "/Users/michaelimstepf/.scm_breeze/scm_breeze.sh" ] && source "/Users/michaelimstepf/.scm_breeze/scm_breeze.sh"

# Shortcuts
alias reload='source ~/.bash_profile'
alias pgs='postgres -D /usr/local/var/postgres'
alias rds='redis-server /usr/local/etc/redis.conf'
alias rdf='redis-cli flushall'
alias frc='foreman run rails c'
alias fs='foreman start -f Procfile.dev'
alias frr='foreman run rails s -p 5000'
alias hrc='heroku run rails c -a tidyme-production'
alias hrm='heroku run rake db:migrate -a tidyme-production'
alias hrr='heroku restart -a tidyme-production'
