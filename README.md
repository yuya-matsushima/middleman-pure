# Middleman::Pure

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'middleman-pure'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install middleman-pure

## Usage

    $ middleman init PROJECT
    $ cd PROJECT 
    $ vi Gemfile 

Add a postscript: 

    gem 'middleman-pure', :github => 'yterajima/middleman-pure'
    gem 'font-awesome-middleman'

__NOTICE:__ `font-awesome-middleman` provides `font-awesome' CSS and Fonts file your Middleman Project.

    $ bundle install --path vendor/bundle

For example, You can use to add these text in top of `source/stylesheets/all.css`:

    //= require 'pure-min'
    //= require 'font-awesome'

## How To "Install or Update Pure"

### Install 

    $ ./pure_install.sh 

### Update 

    $ ./pure_update.sh

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
