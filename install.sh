#!/bin/sh

ZSHRC=~/.zshrc
PATH="/usr/local/opt/ruby/bin:$PATH"
echo 'prompt_context(){}' >> $ZSHRC

# Copy dotfiles
VIMRC=~/.vimrc
if [ -f $VIMRC ]; then
	mv $VIMRC "${VIMRC}-$(date +%Y-%m-%d_%H-%M-%S)"
fi
cp .vimrc $VIMRC

# Install fonts for Oh-My-Zsh theme
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
echo "TODO: Change oh-my-zsh theme to agnoster in .zshrc"

# Install mas & Xcode
brew install "mas"
mas install 497799835
sudo xcodebuild -license accept

# Install from Brewfile
brew bundle --verbose

# Install from RubyGems
gem update --system
sudo gem install cocoapods

# Install for VCNC
./vcnc.sh

# Setup environemnt variables
echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> $ZSHRC
echo 'export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"' >> $ZSHRC
echo 'export ANDROID_HOME="$ANDROID_SDK_ROOT"' >> $ZSHRC
echo 'export JAVA_HOME="$(/usr/libexec/java_home -v1.8)"' >> $ZSHRC