# Arithmetic

# Contently Code Test

## General Info
The instructions below do not make clear what assumptions should be made regarding order of caclulationg the math operators, but simply mention "order of operations" for consideration.  For this version I've decided to code the calculator to behave like an actual physical calculator / adding machine, where after each operation, the total (i.e. = ) result is updated.  If we were to leave it up to the Ruby ```eval``` method, we would get a different result.

## Instructions for this project
Write a calculator that can compute simple arithmetic encoded as strings. For instance an input might look like: “2 + 3 / 5”.

* ### Things to consider
	- order of operations
	- unit tests

* ### Bonus points:
 	- input validation


To complete this assignment fork this Gist and provide your completed work. No more than a few hours should be spent on this. Try to be as complete as possible, but the purpose is more to facilitate a discussion. Feel free to use any language of choice, though Ruby or JavaScript are preferable.


## To Run Code
To run from command line with arguments browse to root of project and run
		$ ruby lib/arithmetic.rb ['your math wrapped in quotes']
To run and be prompted for input
		$ ruby lib/app.rb

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'arithmetic'#, git: ''
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arithmetic, git: path/to/this/repo.git

## Usage

The basic purpose of this gem is to emulate a calculator for simple arithmetic.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lacostenycoder/arithmetic.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
