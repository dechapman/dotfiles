[ -z "${PS1-}" ] && return    # exit if not interactive

# Return error if GLOB fails a pathname match
shopt -s failglob

# Shell ignores ^D. Type exit.
set -o ignoreeof

# Protects file overwrites from >file redirection.
# Use "force" syntax: >|file
set -o noclobber

# Instant notification when a background job completes.
set -o notify

# Detects typos in variable names. 
# Return error when expanding an unset variable.
set -o nounset

# Expand all symbolic links in PWD and CD to real physical directory
set -o physical

# Allow # comments on the command line.
set -o interactive-comments



# Force user to confirm before executing copy and move
alias mv='mv -i'
alias cp='cp -i -p'

alias l='less'

# Force colored output
alias ls='ls -abp --color=auto'
alias grep='grep --color=auto'
alias fgrep='grep -F --color=auto'


# Keep a long history of previous commands by appending
export HISTSIZE=2000
export HISTFILESIZE=1000000
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT=
export PROMPT_COMMAND='history -a'
shopt -s cmdhist
shopt -s histappend

# Minimal prompt with full physical directory display
# Root login is indicated by a red #
# Nonroot users indicated by a green $

if [ "`id -u`" = "0" ]; then
   PS1="\n\e[0;33m\$PWD/\n\e[0;31m# \e[0;32m"
else
   PS1="\n\e[0;33m\$PWD/\n\e[0;32m$ "
fi


# DELETE ALL LINES BELOW
# Machine-speficic lines in my setup

COLORTERM='rxvt-xpm-mono'
alias lowcase='convmv * -r --lower --notest'
alias screenfix='xrandr --size 1024x768'
alias am='advmame'
alias m='mplayer -loop 0'
alias mp='mplayer -loop 0 -shuffle -playlist'

PATH=$PATH:/home/tracer/bin
export PATH
