$: << File.join(File.expand_path(File.dirname(__FILE__)), '..', '..', 'lib')

require 'calculator_server'
require 'capybara/cucumber'

Capybara.app = Sinatra::Application.new
