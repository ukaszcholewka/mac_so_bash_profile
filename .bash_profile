# https://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'

# https://github.com/ukaszcholewka/
alias ll='ls -la'
alias gc='git checkout'
alias gs='git status'

# https://ma.ttias.be/pretty-git-log-in-one-line/#:~:text=By%20default%2C%20a%20git%20log%20looks%20like%20this.&text=Each%20commit%2C%20with%20the%20date,fit%20on%20a%20single%20line.
alias gh="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

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
