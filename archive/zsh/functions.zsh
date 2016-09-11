#!/bin/zsh

extract () {
    if [ -f $1 ]; then
        case $1 in
        *.tar.bz2)  tar -jxvf $1        ;;
        *.tar.gz)   tar -zxvf $1        ;;
        *.bz2)      bzip2 -d $1         ;;
        *.gz)       gunzip -d $1        ;;
        *.tar)      tar -xvf $1         ;;
        *.tgz)      tar -zxvf $1        ;;
        *.zip)      unzip $1            ;;
        *.Z)        uncompress $1       ;;
        *.rar)      unrar x $1            ;;
        *)          echo "'$1' Error. Please go away" ;;
        esac
        else
        echo "'$1' is not a valid file"
    fi
}

have() {for i in $@; type $i &>/dev/null || return 1}
mkf() {mkdir -p $1 && cd $1}
pathgrep() {find $(sed 's/:/ /g' <<<$PATH) | grep --color $1}
dstart() {for d in $@; sudo /etc/rc.d/$d start || return 1}
dstop() {for d in $@; sudo /etc/rc.d/$d stop || return 1}
drestart() {for d in $@; sudo /etc/rc.d/$d restart || return 1}
dedit() {sudo vim /etc/rc.d/$^@}
dshow() {ls /var/run/daemons}
pubip() {curl http://whatismyip.org/ 2>/dev/null; echo}
ipc() {pubip | pbcopy}

# do we have ack? I'd like to say so.
if which ack-grep >/dev/null 2>&1
then
    alias ack=ack-grep
fi
# Catch if we don't have it. Alias returns 0 too.
if which ack >/dev/null 2>&1
then
    # add a function to wrap around ack.
    # annoyingly BSD xargs doesn't have -e
    vack()
    {
        if [ $#[@] -eq 1 ]
        then
            # We could have more args (like a dir, whatever..), so if we just
            # have one, assume that whole thing is the string to search for.
            # Also make vim go to the first line, then search for it
            # (otherwise wrapscan can get in the way).
            ack --no-color -l "$@" | xargs -o vi +1 +/"$@"
        else
            ack --no-color -l $@ | xargs -o vi
        fi
    }
fi


