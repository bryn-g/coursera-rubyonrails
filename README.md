# coursera-rubyonrails
## Coursera: Ruby on Rails - An Introduction

### development environment set-up
```sh
# trigger macos developer tool install
$ git --version

# install homebrew (non-admin)
$ mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master 
  | tar xz --strip 1 -C homebrew

# homebrew execution path in .bash_profile
export BREW_HOME=$HOME/homebrew/bin
PATH=$BREW_HOME:$PATH
```
#### ruby
https://gorails.com/setup/osx/10.13-high-sierra

```sh
# install ruby environment
$ brew install rbenv ruby-build

# add rbenv to bash so that it loads every time you open a terminal
$ echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
$ source ~/.bash_profile

# install ruby
$ rbenv install 2.4.2

# set the global version to use everywhere
$ rbenv global 2.4.2
$ ruby -v
```
#### ruby-on-rails
```sh
# install rails
$ gem install rails -v 5.1.4

# need to run rbenv rehash anytime change gems that run from command line
$ rbenv rehash

# new rails application
$ rails new <app_name>

# run application
$ rails server
```
#### other requirements
```sh
# install phantomjs - headless browser
$ brew install phantomjs

# rspec for unit testing
$ gem install rspec
$ gem install rspec-its

# http and restful web services
$ gem install httparty
$ gem install webmock

# real user simulation tests
$ gem install capybara

# phantomjs driver for capybara - allows headless tests on webkit browser
$ gem insall poltergeist
```
### zip command used for final assignment submission
```sh
# zip the rails application and exclude some unecessary files
zip -r recipefinder.zip * 
  -x ".DS_Store/*" -x "tmp/*" 
  -x "*/development.log" -x "*/development.sqlite3" 
  -x "*/2*_create_recipes.rb" -x "Gemfile.zip"
```

```ruby
end.
```
