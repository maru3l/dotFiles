#!/usr/bin/env bash

# Set as admin
sudo -v

# Install Homebrew
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts
brew update
brew upgrade

# Install packages
brew install awscli
brew install bash
brew install bash-completion2
brew install bash-git-prompt
brew install brew-cask-completion
brew install docker
brew install docker-compose
brew install docker-completion
brew install docker-compose-completion
brew install fish
brew install gatsby-cli
brew install git
brew install git-lfs
brew install grep
brew install imagemagick
brew install mongodb
brew install node
brew install nvm
brew install python
brew install ruby
brew install serverless
brew install yarn
brew install yarn-completion
brew install vim
brew install webp

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;




brew cask install adobe-creative-cloud
brew cask install 1password
brew cask install aerial
brew cask install alfred
brew cask install balenaetcher
brew cask install caldigit-thunderbolt-charging
brew cask install cyberduck
brew cask install firefox-developer-edition
brew cask install fontplop
brew cask install google-chrome-dev
brew cask install handbrake
brew cask install hiddenbar
brew cask install hyper
brew cask install imageoptim
brew cask install jitsi-meet
brew cask install kap
brew cask install microsoft-office
brew cask install postman
brew cask install rectangle
brew cask install riot
brew cask install sequel-pro
brew cask install sketch
brew cask install skyfonts
brew cask install slack
brew cask install the-unarchiver
brew cask install toggl
brew cask install tor-browser
brew cask install transmission
brew cask install visual-studio-code
brew cask install vlc
brew cask install vmware-fusion
brew cask install zeplin

# brew cask install iina
# brew cask install rocket

# Install fonts

brew cask install font-fira-code
brew cask install font-hack
brew cask install font-roboto-mono

# Cleanup after installation

brew cleanup
