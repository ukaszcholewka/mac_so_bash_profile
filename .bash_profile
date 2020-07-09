# https://github.com/ukaszcholewka/mac_so_bash_profile
# Author: Łukasz Cholewka - @fckueve
# License: MIT
# Contributors: https://github.com/ukaszcholewka/mac_so_bash_profile/graphs/contributors


# https://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'

# https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# https://github.com/ukaszcholewka/
alias ll='ls -la'

# https://ma.ttias.be/pretty-git-log-in-one-line/#:~:text=By%20default%2C%20a%20git%20log%20looks%20like%20this.&text=Each%20commit%2C%20with%20the%20date,fit%20on%20a%20single%20line.
alias gh="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# https://jef.works/blog/2017/08/13/5-useful-bash-aliases-and-functions/
alias hs='history | grep'

# https://apple.stackexchange.com/questions/55875/git-auto-complete-for-branches-at-the-command-line
if [ ! -f ~/.git-completion.bash ]; then
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# https://github.com/ukaszcholewka/
reload_bash() {
  source ~/.bash_profile
}

fgit() {
  git add .
  local msg="${1:?Missing commit message!}"
  git commit -m "$msg" $*
  git push
}

# we don't speak about this command
fuckyou() {
  echo "Fuck you too $(whoami)!"
}

# https://jef.works/blog/2017/08/13/5-useful-bash-aliases-and-functions/
targz() {
  tar -zcvf $1.tar.gz $1; rm -r $1;
}

# https://jef.works/blog/2017/08/13/5-useful-bash-aliases-and-functions/
untargz() {
  tar -zxvf $1; rm -r $1;
}

# https://jef.works/blog/2017/08/13/5-useful-bash-aliases-and-functions/
mkcd() {
  mkdir -p $1; cd $1
}

# https://github.com/ukaszcholewka/
update_bash() {
  curl https://raw.githubusercontent.com/ukaszcholewka/mac_so_bash_profile/master/.bash_profile -o ~/.bash_profile
}

update_bash
