#!/usr/bin/env bash

# Set as admin
sudo -v

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts
brew update
brew upgrade

# Install packages
brew install git
brew install grep
brew install yarn
brew install node
brew install ruby
brew install awscli
brew install bash
brew install bash-completion2
brew install brew-cask-completion
brew install vim  --with-override-system-vi

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;


casks=(
  adobe-creative-cloud
  aerial
  alfred
  atom
  bartender
  firefoxdeveloperedition
  fontplop
  franz
  google-chrome
  google-chrome-canary
  hyper
  imageoptim
  java
  keeweb
  microsoft-office
  odrive
  opera-developer
  postman
  resilio-sync
  sequel-pro
  slack
  sketch
  skyfonts
  skype
  slack
  spectacle
  the-unarchiver
  toggl
  tower
  transmission
  visual-studio
  vmware-fusion
)

brew cask install "${casks[@]}"

# Install fonts

fonts=(
  font-hack
  font-roboto-mono
)

brew cask install "${fonts[@]}"

# Cleanup after installation

brew cleanup
brew cask cleanup
