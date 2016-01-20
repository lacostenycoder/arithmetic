require_relative "arithmetic/version"
require_relative "arithmetic/calculator"
require_relative "arithmetic/input_parser"

module Arithmetic
  if ARGV.length > 0
    require_relative 'app'
  else
    puts 'Missing arguments.  Run againg with whole numbers seperated by operators ( +, -, X, /)'
  end

end
