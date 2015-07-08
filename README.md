# spell_checker_usa
This gem offers spelling suggestions for cities and states in the United States

## Installation

Add this line to your applications's Gemfile:
  gem 'spell_checker_usa'

and then execute:
  $ bundle

or install it yourself as:
  $ gem install 'spell_checker_usa'

## Examples
```ruby

# State Checking
SpellCheckerUSA::SpellChecker.check_state("Alabma")
# => "Alabama"

# City Checking
SpellCheckerUSA::SpellChecker.check_city("Montgomry", "AL")
# => "Montgomery"

## Contributing

1. Fork it ( http://github.com/Spokeo/spell_check_usa/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Write specs!
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

## Running the Specs
  $ rake
