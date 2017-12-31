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

apps=(
  git
  grep
  yarn
  node
  ruby
  bash
  bash-completion2
  brew-cask
)

brew install "${apps[@]}"

brew install vim  --with-override-system-vi

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
  vagrant
  visual-studio
  virtualbox
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
