#!/bin/sh

# install HomeBrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install java
brew tap caskroom/versions
brew cask install java8

# install python & pip
brew install python

# install ruby
brew install ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
# add to zshrc

# install zsh
brew install zsh 
# make zsh as default shell
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# install Powerline Fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# install CocoaPods
sudo gem install cocoapods

# install fastlane
xcode-select --install
brew cask install fastlane

# install lokalise
brew tap lokalise/brew
brew install lokalise

# install swiftlint
brew install swiftlint

# install jekyll
gem install --user-install bundler jekyll

