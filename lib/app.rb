require_relative 'arithmetic'

input =  ARGV.join(' ').to_s
calc = Calculator.new
erros = false

def self.prompt_user(errors)
  puts 'Invalid entry... retry' if errors
  puts 'Enter numbers seperated by math operators ( + , - , X , /)'
end

if input.empty?
  prompt_user(erros)
  input = STDIN.gets.chomp
end

result = calc.calculate(input)

while !result
  errors = true
  prompt_user(errors)
  input = STDIN.gets.chomp
  result = calc.calculate(input)
end

result = result.to_s
result = result.split('.')[0] if result.split('.').last.to_i == 0

puts "Answer is: " + result
