## Setup environment
#TMOUT=3600
EDITOR="vim"
PAGER="less"
HISTFILE=$HOME/.histfile
HISTSIZE=5000
SAVEHIST=$HISTSIZE
GREP_COLOR="4;36"
# remove / from wordchars, so ^W will go back to the last / for example
WORDCHARS="${WORDCHARS:s#/#}"
#FONT="terminus"

[[ -d /usr/local/bin ]] && PATH+=":/usr/local/bin"
[[ -d /opt/local/bin ]] && PATH+=":/opt/local/bin"
[[ -d /usr/local/sbin ]] && PATH+=":/usr/local/sbin"
[[ -d /opt/local/sbin ]] && PATH+=":/opt/local/sbin"

# use coreutils from macports if available
[[ -d /opt/local/libexec/gnubin ]] && PATH+=":/opt/local/libexec/gnubin"
# Source coreutils aliases from brew if it exists
[[ -f /usr/local/Cellar/coreutils/8.12/aliases ]] && source /usr/local/Cellar/coreutils/8.12/aliases

# All the pretty colors
$(which dircolors > /dev/null) && [[ -f ~/.dircolors ]] && eval `dircolors ~/.dircolors`

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[0;36m'        # begin bold -- cyan
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[0;34m'        # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[0;35m'        # begin underline -- purple
export LESS_TERMCAP_zz=$'\E[0m'           # make 'export' output not now all be colourised.

#Goddamn Apple defaulting Clang to raise errors
export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments
