#!/bin/sh

# Install Command Line Tools
xcode-select --install

# Install HomeBrew & Update default ruby
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install "ruby"
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Install for shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
