initialize-all-the-things
========================================

I forked [Nick Cunningham's dotfiles repo](https://github.com/cunningham/dotfiles) as a starting point for this. This repo is a way for me to automate the setup of a new machine as much as possible.

This is the basic process:

1. Create a login with the same username I always use
2. Download this repo
3. Manually install needed applications
4. Sign into Dropbox and start syncing (wait until finished syncing before moving to step 6)
5. `bash app-installs.sh`
    - Installs Homebrew & Cask; then installs a bunch of Homebrew packages, Cask packages, downloads my preferred iTerm colors & font & installs them, then manages the Dock
    - There's not really a good way to install Mac App Store apps at this point, `mas` I've found just doesn't reliably work
    - There's some apps that I still have to manually download and install that aren't available via Cask
6. `bash defaults-write.sh`
    - Sets a bunch of macOS defaults to what I like
7. `mackup restore`
    - Restores all (read *most*) of my preferences for apps, etc.
8. Sign into the ever growing amount of other apps/services/etc. that I use
9. Add all the things I forgot last time to this repo

Also check to ensure there are no symbolic links in Dropbox after setting it up as this causes issues with SmartSync: `find ~/Dropbox -type l -exec ls -lah {} \;`
