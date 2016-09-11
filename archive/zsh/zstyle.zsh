#--------------------------------------------------------------
# Globals
#--------------------------------------------------------------
zstyle :compinstall filename "${HOME}/.zshrc"

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' add-space true
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _ignored _match _correct _approximate _prefix
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' glob 1
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*' insert-unambiguous false
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %l \(%p\): Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' '+m:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+r:|[._-]=** r:|=**' '+l:|=* r:|=*'
zstyle ':completion:*' match-original both
zstyle ':completion:*' max-errors 3 numeric
zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' prompt 'Correct %e errors'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %l \(%p\)%s
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true
zstyle ':completion:*' accept-exact '*(N)'
## Use cache
# Some functions, like _apt and _dpkg, are very slow. You can use a cache in
# order to proxy the list of results (like the list of available debian
# packages)
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ${HOME}/.zsh_cache


#--------------------------------------------------------------
# Misc
#--------------------------------------------------------------
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=$color[cyan]=$color[red]"

zstyle ':completion:*:*:*:*:processes' menu yes select
zstyle ':completion:*:*:*:*:processes' menu search
zstyle ':completion:*:*:*:*:processes' force-list always

# With commands like `rm' it's annoying if one gets offered the same filename
# again even if it is already on the command line. To avoid that:
zstyle ':completion:*:rm:*' ignore-line yes


#--------------------------------------------------------------
# Git
#--------------------------------------------------------------

zstyle ':completion:*:*:git:*:aliases'  list-colors "=(#b)(*)  #-- alias for *=$color[none]=$color[green]"
zstyle ':completion:*:*:git:*:commands' list-colors "=(#b)(*)  #-- *=$color[none]=$color[blue]"
zstyle ':completion:*:*:git-branch:*:branch-names' list-colors "=(#b)((master)#|(origin)(/)(master)#(*)|(*))=$color[blue]=$color[none]=$color[cyan]=$color[green]=$color[none]=$color[cyan]=$color[blue]=$color[blue]"
zstyle ':completion:*:*:git-branch:*:heads' list-colors "=(#b)((master)#|(origin)(/)(master)#(*)|(*))=$color[blue]=$color[none]=$color[cyan]=$color[green]=$color[none]=$color[cyan]=$color[blue]=$color[blue]"
zstyle ':completion:*:*:git-checkout:*:heads' list-colors "=(#b)((master)#|(origin)(/)(master)#(*)|(*))=$color[blue]=$color[none]=$color[cyan]=$color[green]=$color[none]=$color[cyan]=$color[blue]=$color[blue]"
zstyle ':completion:*:*:git-cherry:*:heads' list-colors "=(#b)((master)#|(origin)(/)(master)#(*)|(*))=$color[blue]=$color[none]=$color[cyan]=$color[green]=$color[none]=$color[cyan]=$color[blue]=$color[blue]"
zstyle ':completion:*:*:git-cherry-pick:*:heads' list-colors "=(#b)((master)#|(origin)(/)(master)#(*)|(*))=$color[blue]=$color[none]=$color[cyan]=$color[green]=$color[none]=$color[cyan]=$color[blue]=$color[blue]"
zstyle ':completion:*:*:git-push:*:heads' list-colors "=(#b)((master)#|(origin)(/)(master)#(*)|(*))=$color[blue]=$color[none]=$color[cyan]=$color[green]=$color[none]=$color[cyan]=$color[blue]=$color[blue]"
zstyle ':completion:*:*:git-rebase:*:heads' list-colors "=(#b)((master)#|(origin)(/)(master)#(*)|(*))=$color[blue]=$color[none]=$color[cyan]=$color[green]=$color[none]=$color[cyan]=$color[blue]=$color[blue]"
zstyle ':completion:*:*:git-reset:*:heads' list-colors "=(#b)((master)#|(origin)(/)(master)#(*)|(*))=$color[blue]=$color[none]=$color[cyan]=$color[green]=$color[none]=$color[cyan]=$color[blue]=$color[blue]"
zstyle ':completion:*:*:git-branch:*:tags' list-colors "=*=$color[yellow]"
zstyle ':completion:*:*:git-checkout:*:tags' list-colors "=*=$color[yellow]"
zstyle ':completion:*:*:git-cherry-pick:*:tags' list-colors "=*=$color[yellow]"
zstyle ':completion:*:*:git-cherry:*:tags' list-colors "=*=$color[yellow]"
zstyle ':completion:*:*:git-push:*:tags' list-colors "=*=$color[yellow]"
zstyle ':completion:*:*:git-rebase:*:tags' list-colors "=*=$color[yellow]"
zstyle ':completion:*:*:git-reset:*:tags' list-colors "=*=$color[yellow]"
zstyle ':completion:*:*:git-fetch:*:remotes' list-colors "=*=$color[green]"
zstyle ':completion:*:*:git-push:*:remotes' list-colors "=*=$color[green]"
zstyle ':completion:*:*:git-add:*:modified-files' list-colors "=*=$color[red]"
zstyle ':completion:*:*:git-add:*:other-files' list-colors "=*=$color[magenta]"


