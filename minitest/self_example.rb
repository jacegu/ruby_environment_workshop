=begin
This has nothing to do with Minitest.

This example was coded in order to explain why you
can define class methods both with the class
name or self.

The question rised afther showing the implementation
of the stubbing of now method.
=end

puts '>begining of the classical self example'

puts self

class Klass
  puts self

  def something
    puts self
  end
end

puts self

Klass.new.something

puts '>end of the classical self example'
