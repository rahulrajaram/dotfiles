export VISUAL=vim
export EDITOR="$VISUAL"
export mine="/Applications/RubyMine.app/Contents/MacOS/rubymine"
alias sublime="/Users/rahulrajaram/Library/Application Support/Sublime Text 3/"
# apm shortcuts

# rake and bundle tasks
alias hh="history"
alias binst="bundle install"
alias bupdate="bundle update"
alias docs="cd ~/Documents"
alias down="cd ~/Downloads"
alias tt="bundle exec ruby -Itest"

# amazon shortcuts
source ~/.amazonrc.sh

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

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

export PS1='\[\033[01;32m\]\u\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\]'
# grep related
alias gbrg="gbr | grep"

# other shortcuts
alias amazonrc="vim ~/.amazonrc.sh"
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
