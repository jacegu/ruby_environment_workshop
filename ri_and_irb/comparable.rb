class SomethingComparable
  include Comparable

  attr_reader :name
  protected :name

  def initialize(name = '')
    @name = name
  end

  def <=>(other)
    if other.respond_to? :name
      return name <=> other.name
    else
      return 1
    end
  end
end

a = SomethingComparable.new 'a'
b = SomethingComparable.new 'b'
c = SomethingComparable.new 'c'

puts "c > b  -> #{c > b}"
puts "c > a  -> #{c > a}"
puts "a > b  -> #{a > b}"
puts "a > a  -> #{a > a}"
puts "a >= a -> #{a >= a}"
puts "a.between?(b,c) -> #{a.between?(b,c)}"
puts "b.between?(a,c) -> #{a.between?(a,c)}"
puts "b < 1  -> #{b < 1}"
puts "a > 1  -> #{a > 1}"
puts "c >= 1 -> #{c > 1}"

#try this and expect it to fail (why?)
#puts "1 > a  -> #{1 < a}"
