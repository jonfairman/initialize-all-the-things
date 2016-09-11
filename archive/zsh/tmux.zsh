# Are we not in tmux and do we have it?
if [ -z $TMUX ] && ( which tmux >/dev/null 2>&1 )
then
    declare -a tmuxi
    #OFS=$IFS
    #IFS="
    #"
    tmuxi=( $( tmux list-sessions 2>&1 ) )
    if [ $? -eq 0 ]
    then
        printf "Current tmux sessions:\n${tmuxi[*]}\n"
    fi
    #IFS=$OFS
fi
