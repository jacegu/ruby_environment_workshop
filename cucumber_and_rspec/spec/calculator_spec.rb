require 'calculator'

describe Calculator do
  describe '::add' do
    context 'both operands have been provided' do
      it 'returns the sum of the both operands' do
        first_operand  = 1
        second_operand = 2
        the_result = 3
        Calculator.add(first_operand, second_operand).should == the_result
      end
    end

    context 'operand missing' do
      it 'should do something about it'
    end
  end
end
