# check_yo_spelling
[![Code Climate](https://codeclimate.com/github/Spokeo/CheckYoSpelling.png)](https://codeclimate.com/github/Spokeo/CheckYoSpelling)
[![Build Status](https://travis-ci.org/Spokeo/CheckYoSpelling.svg)](https://travis-ci.org/Spokeo/CheckYoSpelling)


This gem offers spelling suggestions for cities and states in the United States

## Installation

Add this line to your applications's Gemfile:
  gem 'check_yo_spelling'

and then execute:
  $ bundle

or install it yourself as:
  $ gem install 'check_yo_spelling'

## Examples
```ruby

# State Checking
CheckYoSpelling::USA.check_state("Alabma")
# => "Alabama"

# City Checking
CheckYoSpelling::USA.check_city("Montgomry", "AL")
# => "Montgomery"

## Contributing

1. Fork it ( http://github.com/Spokeo/CheckYoSpelling/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Write specs!
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

## Running the Specs
  $ rake
