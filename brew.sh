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
brew install awscli
brew install bash
brew install bash-completion2
brew install bash-git-prompt
brew install brew-cask-completion
brew install docker-completion
brew install docker-compose-completion
brew install git
brew install grep
brew install mongodb
brew install node
brew install nvm
brew install ruby
brew install yarn
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
  bartender
  firefoxdeveloperedition
  fontplop
  google-chrome
  google-chrome-canary
  hyper
  imageoptim
  java
  kap
  keeweb
  microsoft-office
  odrive
  postman
  resilio-sync
  rocket
  sequel-pro
  slack
  sketch
  skyfonts
  skype
  slack
  spectacle
  the-unarchiver
  toggl
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
