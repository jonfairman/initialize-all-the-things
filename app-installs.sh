#!/bin/bash

# Install Homebrew & Cask
# ------------------------------------------------------------------------------
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask

# Homebrew Installs
# ------------------------------------------------------------------------------
brew install \
    dockutil \
    ffmpeg \
    git \
    mas \
    mackup \
    switchaudio-osx \
    z

# Cask Installs
# ------------------------------------------------------------------------------
brew cask install \
    1password \
    adobe-creative-cloud \
    adobe-illustrator-cc \
    adobe-photoshop-cc \
    alfred \
    atom \
    audacity \
    audio-hijack \
    bartender \
    beamer \
    blue-jeans-launcher \
    box-sync \
    cakebrew \
    cheatsheet \
    chronosync \
    crashplan \
    cyberduck \
    daisydisk \
    data-rescue \
    dropbox \
    etrecheck \
    fantastical \
    firefox \
    finicky \
    flux \
    github-desktop \
    gitup \
    google-chrome \
    google-drive \
    gpgtools \
    handbrake \
    handbrakecli \
    hazel \
    hipchat \
    imageoptim \
    iterm2 \
    itunes-volume-control \
    karabiner \
    knox \
    linein \
    logitech-control-center \
    logitech-unifying \
    macid \
    mactracker \
    markdown-service-tools \
    moom \
    netspot \
    omnigraffle \
    parallels-desktop \
    pixel-check \
    postman \
    qlcolorcode \
    qlimagesize \
    qlmarkdown \
    qlstephen \
    quicklook-csv \
    quicklook-json \
    screens-connect \
    skitch \
    slack \
    spotify \
    steam \
    things \
    tunnelblick \
    vlc \
    vmware-fusion \

# Cleans up install files
# ------------------------------------------------------------------------------
brew cleanup

# Install Ruby gems
# ------------------------------------------------------------------------------
sudo gem install \
    net-ping \
    rest-client

# Mac App Store Installs ('mas' doesn't currently work well and therefore these must be manually downloaded
# ------------------------------------------------------------------------------
# mas signout
# airmail
# mas install 918858936
# amphetamine
# mas install 937984704
# apple configurator 2
# mas install 1037126344
# color picker
# mas install 641027709
# final cut pro
# mas install 424389933
# gif keyboard
# mas install 1043270657
# keynote
# mas install 409183694
# logic pro x
# mas install 634148309
# microsoft remote desktop
# mas install 715768417
# numbers
# mas install 409203825
# pages
# mas install 409201541
# paprika
# mas install 451907568
# picgif lite
# mas install 844918735
# pixelmator
# mas install 407963104
# pocket
# mas install 568494494
# remote desktop
# mas install 409907375
# screens
# mas install 446107677
# tweetbot
# mas install 557168941
# unclutter
# mas install 577085396
# xcode
# mas install 497799835

# Apps that cannot be installed via Cask or the Mac App Store
# ------------------------------------------------------------------------------
# adobe photoshop lightroom
# apogee maestro 2
# autocad lt 2016
# blackmagic atem switchers
# blackmagic converters
# lilyview
# microsoft office
# pearl
# p-touch editor
# pdfpenpro
# photomatix pro 5
# quickres
# scansnap manager
# shure update utility
# shure web device discovery

# Download iTerm 'Solarized-Dark-Higher-Contrast' color theme
# ------------------------------------------------------------------------------
echo "Downloading iTerm colors"
curl https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20Higher%20Contrast.itermcolors > ~/Downloads/Solarized-Dark-Higher-Contrast.itermcolors
open ~/Downloads/Solarized-Dark-Higher-Contrast.itermcolors -a iTerm.app

# Download SF Mono Medium font for iTerm
# ------------------------------------------------------------------------------
#echo "Downloading iTerm font"
#curl http://media.nodnod.net/Inconsolata-dz.otf.zip > ~/Downloads/Inconsolata-dz.otf.zip
#open ~/Downloads/Inconsolata-dz.otf.zip
#open ~/Downloads/Inconsolata-dz.otf

echo "Installing SF Mono font"
cp /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/*.otf ~/Library/Fonts/

# Configure the dock
# ------------------------------------------------------------------------------
echo "Configuring the Dock"
dockutil --remove all
dockutil --add /Applications/Airmail\ 3.app
dockutil --add /Applications/Things.app
dockutil --add /Applications/Safari.app
dockutil --add /Applications/Google\ Chrome.app
dockutil --add /Applications/Messages.app
dockutil --add /Applications/HipChat.app
dockutil --add /Applications/iTunes.app
dockutil --add /Applications/Bear.app
dockutil --add /Applications/Pocket.app
dockutil --add /Applications/Preview.app
dockutil --add /Applications/Photos.app
dockutil --add /Applications/Adobe/Adobe\ Lightroom\ Classic\ CC/Adobe\ Lightroom\ Classic\ CC.app
dockutil --add /Applications/iTerm.app
dockutil --add /Applications/Atom.app
dockutil --add /Applications/1Password\ 6.app
dockutil --add /Applications/App\ Store.app
dockutil --add /Applications/System\ Preferences.app
dockutil --add '~/Dropbox/Apps/Rocket/GIF' --view grid --display stack --sort name
dockutil --add '~/Dropbox/Jon/Downloads' --view fan --display stack --sort dateadded
