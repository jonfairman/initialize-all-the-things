# ZSH Options, like a warm blanket
# Section names taken from the zshoptions(1) manpage

# Changing Directories
setopt AUTO_PUSHD             # automatically append dirs to the push/pop list
setopt PUSHD_IGNORE_DUPS      # and don't duplicate them
unsetopt CDABLE_VARS          # stop guessing ~ is at the start of a directory
setopt CHASE_LINKS

#setopt correct                # spelling correction
setopt interactivecomments    # escape commands so i can use them later
setopt printexitvalue         # alert me if something's failed
setopt short_loops            # allow short forms of loops
unsetopt clobber              # Safer pipes
unsetopt ignoreeof            # ^D logs out

# Shell State
setopt nobeep                 # stop beeping

# Prompt
setopt transient_rprompt      # rprompt can go away when needed
setopt prompt_subst           # expansion within prompts
setopt nopromptcr             # don't add \r which overwrites cmd output with no \n

# Job Control
setopt long_list_jobs         # list jobs in long format
setopt nohup                  # and don't kill them, either
setopt nocheckjobs            # don't warn me about bg processes when exiting
unsetopt notify               # wait until I am paying attention to tell me job status

# Globbing
setopt extendedglob           # weird & wacky pattern matching - yay zsh!
unsetopt nomatch              # don't print an error when no patch is found

# Completion
#setopt completeinword         # not just at the end
##setopt alwaystoend            # move the cursor to the end on completion
setopt complete_aliases       # when doing completion, also complete aliases
#setopt listpacked             # compact completion lists
#setopt listtypes              # show types in completion
#setopt listambiguous          # Show stuff
#setopt recexact               # recognise exact, ambiguous matches
#unsetopt menucomplete         # give the tab completion menu
#unsetopt autoremoveslash      # stop auto removing the slash that the completion did

# History
setopt inc_append_history      # write history as soon as its entered
setopt extended_history        # write timestamp to the file
setopt hist_ignore_space       # commands beginning with spaces are ommitted from history
unsetopt histverify            # when using ! cmds, confirm first
setopt hist_ignore_dups        # do not write duplicate history

# Scripts and Functions
setopt local_options           # allow functions to have local options
setopt local_traps             # allow functions to have local traps
setopt multios

