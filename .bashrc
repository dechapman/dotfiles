[ -z "${PS1-}" ] && return    # exit if not interactive

set -o notify
set -o nounset
set -o physical
set -o interactive-comments

alias l='less'
alias mv='mv -i'
alias cp='cp -i -p'
alias ls='ls -abp --color=auto'
alias grep='grep --color=auto'
alias fgrep='grep -F --color=auto'

export HISTSIZE=2000
export HISTFILESIZE=1000000
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT=
export PROMPT_COMMAND='history -a'
shopt -s cmdhist
shopt -s histappend

alias l='less'
alias mv='mv -i'
alias cp='cp -i -p'
alias ls='ls -abp --color=auto'
alias grep='grep --color=auto'
alias fgrep='grep -F --color=auto'

PS1="\n\e[0;33m\$PWD/\n\e[0;31m# \e[0;32m"
COLORTERM='rxvt-xpm-mono'
alias lowcase='convmv * -r --lower --notest'
alias screenfix='xrandr --size 1024x768'
