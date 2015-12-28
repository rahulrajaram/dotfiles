export VISUAL=vim
export EDITOR="$VISUAL"
# apm shortcuts

# rake and bundle tasks
alias assets_precompile="rake assets:clobber; rake assets:precompile"
alias binst="bundle install"
alias bupdate="bundle update"
alias dbreload="rake db:drop db:create db:migrate; RAILS_ENV=test rake db:drop db:create db:migrate" 
alias docs="cd ~/Documents"
alias down="cd ~/Downloads"
alias reapp="binst; rmig"
alias rmig="bundle exec rake db:migrate;  RAILS_ENV=test bundle exec rake db:migrate"
alias rmigstat="rake db:migrate:status;  RAILS_ENV=test rake db:migrate:status"
alias rrollback="bundle exec rake db:rollback "
alias rrollbackt="RAILS_ENV=test bundle exec rake db:rollback "
alias routes="rake routes"
alias groutes="rake routes | grep"
alias tt="ruby -Itest"
alias rbri="rake build; rake install"
alias rtg="rake -T | grep "

# git related shortcuts
alias gbr="git branch"
alias gap="git add -p"
alias gca="git commit --amend"
alias gco="git checkout"
alias gcom="git checkout master"
alias gpo="git pull origin"
alias gpfo="git push -f origin "
alias gprom="git pull --rebase origin master"
alias gpro="git pull --rebase origin "
alias gri="git rebase -i "
alias grc="git rebase --continue"
alias gs="git status"
alias gl="git log"
alias gll="git log --stat -p"
alias gcomm="git commit -m "
alias gcoma="git commit --amend"
alias grhh="git reset --hard HEAD"
alias ss="./script/stop; ./script/start"
alias mine="mine ."

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

export PS1='\[\033[01;32m\]\u\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\]'
# grep related
alias gbrg="gbr | grep"

# other shortcuts
alias bashrc="vim ~/.bashrc"
alias vimrc="vim ~/.vimrc"
alias vimdir="cd ~/.vim"
alias dotfiles="cd ~/Documents/dotfiles"
alias copyvim="cp ~/.vimrc ~/Documents/dotfiles/vimrc"
alias savevim="cp ~/Documents/dotfiles/vimrc ~/.vimrc"
alias sbashrc="source ~/.bashrc"
alias oberon7="cd ~/Documents/oberon7"
alias pxx="ps aux"

source ~/.git-prompt.sh
PATH="/usr/local/sbin:/usr/local/bin:$PATH"
