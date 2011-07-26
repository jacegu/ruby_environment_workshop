$: << File.join(File.expand_path(File.dirname(__FILE__)), '..', 'lib')

require 'calculator'

describe Calculator do
  describe '::add' do
    context 'both operands have been provided' do
      it 'returns the sum of the both operands' do
        the_first_operand  = 1
        the_second_operand = 2
        the_result = 3
        Calculator.add(the_first_operand, the_second_operand).should == the_result
      end
    end

    context 'operand missing' do
      it 'should do something'
    end
  end
end
