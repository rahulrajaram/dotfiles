export VISUAL=vim
export EDITOR="$VISUAL"
export mine="/Applications/RubyMine.app/Contents/MacOS/rubymine"
alias sublime="/Users/rahulrajaram/Library/Application Support/Sublime Text 3/"
# apm shortcuts

alias apm="cd ~/Documents/apm_bundle"
alias oportal="cd ~/Documents/apm_bundle/apps/oportal/"
alias property="cd ~/Documents/apm_bundle/apps/property/"
alias reports="cd ~/Documents/apm_bundle/apps/reports/"
alias pmodels="cd ~/Documents/apm_bundle/apps/property/engines/property_models"
alias psignable="cd ~/Documents/apm_bundle/apps/property/engines/property_signable/"
alias listings="cd ~/Documents/apm_bundle/apps/listings/"
alias engines="cd ~/Documents/apm_bundle/apps/property/engines"
alias leases="cd ~/Documents/apm_bundle/apps/property/engines/leases/"
alias maint="cd ~/Documents/apm_bundle/apps/property/engines/maintenance_web/"
alias screenings="cd ~/Documents/screenings_app/"
alias tportal="cd ~/Documents/apm_bundle/apps/tportal/"
alias afrails="cd ~/Documents/af_rails"
alias ssq="cd ~/Documents/super_squirrel_app"
alias copy_lease_migrations="rake leases:install:migrations"
alias copy_property_models_migrations="rake property_models_engine:install:migrations"

# rake and bundle tasks
alias hh="history"
alias precompile="rake assets:precompile"
alias binst="bundle install"
alias bupdate="bundle update"
alias dbreload="rake db:drop; rake db:create; rake db:migrate; rake db:fixtures:load"
alias dbreloade="bin/rake db:drop; bin/rake db:create; bin/rake db:migrate"
alias dbreloadt="RAILS_ENV=test rake db:drop; RAILS_ENV=test rake db:create; RAILS_ENV=test rake db:migrate"
alias docs="cd ~/Documents"
alias down="cd ~/Downloads"
alias prepare_integration="apm; rake test:integration:prepare"
alias teardown_integration="apm; rake test:integration:teardown"
alias restart_integration_apps="apm; rake test:integration:restart_apps"
alias integration_test="cd ~/Documents/apm_bundle; rake test:integration:teardown;rake test:integration:prepare"
alias reapp="binst; rmig"
alias rmig="bundle exec rake db:migrate; RAILS_ENV=test bundle exec rake db:migrate"
alias rmigstat="bundle exec rake db:migrate:status; RAILS_ENV=test bundle exec rake db:migrate:status"
alias rrollback="bundle exec bin/rake db:rollback "
alias rrollbackt="RAILS_ENV=test bundle exec rake db:rollback "
alias routes="rake routes"
alias groutes="rake routes | grep"
alias rta="rake test; rake test:selenium"
alias rts="rake test:selenium"
alias rubytest="ruby -Itest"
alias tt="bundle exec ruby -Itest"
alias rbri="rake build; rake install"
alias rtg="rake -T | grep "
alias konacha="RAILS_ENV=test rake konacha:serve"

# git related shortcuts
alias gbr="git branch"
alias gap="git add -p"
alias gca="git commit --amend"
alias gco="git checkout"
alias gcp="git cherry-pick"
alias gcom="git checkout master"
alias gdc="git diff --cached"
alias gmv="git mv"
alias gpo="git pull origin"
alias gpl="git pull"
alias gpfo="git push -f origin "
alias gpf="git push -f"
alias gprom="git pull --rebase origin master"
alias gpro="git pull --rebase origin "
alias gpu="git push"
alias gpuoh="git push -u origin HEAD"
alias gri="git rebase -i "
alias gro="git rebase --onto "
alias grc="git rebase --continue"
alias gs="git status"
alias gskip="git rebase --skip"
alias gl="git log --oneline"
alias gll="git log --stat -p"
alias gct="git commit"
alias gcomm="git commit -m "
alias gcoma="git commit --amend"
alias grhh="git reset --hard HEAD"
alias grs="git reset --soft HEAD~1"

alias ss="./script/stop; ./script/start_copy"
alias launch_selenium="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.selenium-server-standalone.plist; launchctl load ~/Library/LaunchAgents/homebrew.mxcl.selenium-server-standalone.plist"
alias launch_rabbit="launchctl unload /Users/rahulrajaram/Library/LaunchAgents/homebrew.mxcl.rabbitmq.plist; launchctl load /Users/rahulrajaram/Library/LaunchAgents/homebrew.mxcl.rabbitmq.plist"
alias start_solr="cd /Users/rahulrajaram/Downloads/solr-4.8.0/solr/example; rm /Users/rahulrajaram/Documents/apm_bundle/apps/property/config/solr_48/core.properties; java -jar start.jar -Djetty.port=8988"

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
alias cboost="g++ -I /usr/local/opt/boost_1_61_0"

source ~/.git-prompt.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="/Users/rahulrajaram/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
