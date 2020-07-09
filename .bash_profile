# https://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'

# https://github.com/ukaszcholewka/
alias ll='ls -la'

# https://apple.stackexchange.com/questions/55875/git-auto-complete-for-branches-at-the-command-line
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# https://github.com/ukaszcholewka/
reload_bash() {
  source ~/.bash_profile
}
