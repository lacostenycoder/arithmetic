require 'spec_helper'

describe Calculator do

  let(:calc) { Calculator.new }

  it 'should add two numbers' do
    expect(calc.add(2, 2)).to eq(4)
  end

  it 'should subtract two numbers' do
    expect(calc.subtract(5,4)).to eq(1)
  end

  it 'should multiply two numbers' do
    expect(calc.multiply(6,7)).to eq(42)
  end

  it 'should divide two numbers' do
    expect(calc.divide(36,6)).to eq(6)
  end

  it 'should return a proc with correct operator' do
    expect(calc.math).to be_kind_of(Proc)
  end

  it 'should return valid result on calculate' do
    expect(calc.calculate('4 X 4')).to eq(16)
    expect(calc.calculate('3X3')).to eq(9)
    expect(calc.calculate('7 - 3')).to eq(4)
    expect(calc.calculate('2+14 X 2 + 8 / 10')).to eq(4)
  end

  it 'should round to 12 decimals' do
    expect(calc.calculate('100/3')).to eq(33.333333333333)
  end


end
