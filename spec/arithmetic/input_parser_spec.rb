require 'spec_helper'
describe InputParser do

  let(:string) { InputParser.new() }

  it 'should validate correct input format' do
    string.input = '3 x 3 / 3'
    expect(string.valid_input?).to be_kind_of(Array)
    string.input = '4 x 23 / 123 + 25 - 8'
    expect(string.valid_input?).to be_kind_of(Array)
  end

  it 'should return false on invalid input' do
    string.input = '3 0 , 4'
    expect(string.valid_input?).to be(false)
    string.input = '84 - 22 23'
    expect(string.valid_input?).to be(false)
    string.input = 'a + b - c'
    expect(string.valid_input?).to be(false)
  end

end
