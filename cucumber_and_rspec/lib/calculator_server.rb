$: << File.expand_path(File.dirname(__FILE__))

require 'sinatra'
require 'calculator'

set :root,   File.join(File.expand_path(File.dirname(__FILE__)), '..')
set :public, Proc.new { File.join(root, 'public') }
set :views,  Proc.new { File.join(root, 'views') }

get '/' do
  erb :calculator
end

post '/calculate' do
  first_operand  = params[:'first-operand'].to_i
  second_operand = params[:'second-operand'].to_i
  @answer = Calculator.add(first_operand, second_operand)
  erb :calculator
end
