class InputParser

  attr_accessor :input

  def initialize(*input)
    if !input.empty?
      @input = input[0]
    end
  end

  def valid_input?
    valid_ops = ['+','-','X','x','/']
    input_array = @input.scan(/\d+|\D+/).map{|i| i.split.join}
    args = get_args(input_array)
    ops = get_ops(input_array)
    if ops != ops.select{|op| valid_ops.include? op} ||
      args.length < 2 ||
      ops.length != args.length - 1
      return false
    else
      return [args.map{|s| s.to_i}, ops]
    end
  end

  def get_args(string)
    string.values_at(* string.each_index.select {|i| i.even?})
  end

  def get_ops(string)
    string.values_at(* string.each_index.select {|i| i.odd?})
  end


end
