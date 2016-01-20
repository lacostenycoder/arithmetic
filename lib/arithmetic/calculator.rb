class Calculator

  require_relative 'input_parser'

  def initialize
  end

  def add(a, b)
    a + b
  end

  def subtract(a,b)
    a - b
  end

  def multiply(a,b)
    a * b
  end

  def divide(a,b)
    a / b
  end

  def calculate(string)
    parse = InputParser.new(string).valid_input?
    if parse
      numbers = parse[0].map{|n| n.to_f}
      ops = parse[1]
      total = 0
      first_operation = true
      while ops.length > 0
        if first_operation
          total = math.call(ops[0], numbers[0], numbers[1])
          first_operation = false
          2.times{numbers.shift}
        else
          total = math.call(ops[0], total, numbers[0])
          numbers.shift
        end
        ops.shift
      end
      return total.round(12)
    end
    nil
  end

  def math
    method = Proc.new do |operator, a, b|
      case operator
      when '+'
        add(a, b)
      when '-'
        subtract(a,b)
      when 'X' || 'x'
        multiply(a,b)
      when '/'
        divide(a,b)
      end
    end
  end

end
