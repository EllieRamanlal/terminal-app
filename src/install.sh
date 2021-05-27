#!/bin/bash

# step 1 – Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# step 2 – Install Ruby
brew install ruby
# step 3 - install bundler
gem install bundler
# step 4 – install all gem dependencies
bundle install
