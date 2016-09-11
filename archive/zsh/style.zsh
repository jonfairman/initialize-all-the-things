#FMT_BRANCH='%F{green}%b%F{yellow}(%F{010}%7.7i%F{yellow})%F{red}%c%u%f'
#FMT_ACTION="(%F{cyan}%a%f%)"   # e.g. (rebase-i)
#FMT_PATH="%F{244}%R%F{cyan}/%S%f"              # e.g. ~/repo/subdir
#FMT_NVCSPATH="%F{244}%~%f"

# set formats
# %b - branchname
# %u - unstagedstr (see below)
# %c - stagedstr (see below)
# %a - action (e.g. rebase-i)
# %R - repository path
# %r - repository shortname
# %S - path in the repository

#zstyle ':vcs_info:*' enable git
#zstyle ':vcs_info:*:prompt:*' get-revision true
#zstyle ':vcs_info:*:prompt:*' check-for-changes true
#zstyle ':vcs_info:*:prompt:*' unstagedstr '±'  # display ¹ if there are unstaged changes
#zstyle ':vcs_info:*:prompt:*' stagedstr '⁺'    # display ² if there are staged changes
#zstyle ':vcs_info:*:prompt:*' actionformats "${FMT_BRANCH}${FMT_ACTION}//" "${FMT_PATH}"
#zstyle ':vcs_info:*:prompt:*' formats       "${FMT_BRANCH}//"              "${FMT_PATH}"
#zstyle ':vcs_info:*:prompt:*' nvcsformats   ""                             "${FMT_NVCSPATH}"
## zleslie :zstyle ':vcs_info:*:prompt:*' branchformat  "%b|%r"


