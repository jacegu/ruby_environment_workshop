SOURCE_PATH  = 'source.txt'
DESTINY_PATH = 'destiny.txt'

def print_pretty_result(message)
  puts
  puts message
  puts '*'*(message.length + 2)
  puts File.readlines(DESTINY_PATH)
  puts
end

def try_solution(message, &solution)
  solution.call
  print_pretty_result(message)
  File.delete(DESTINY_PATH) if File.exists? DESTINY_PATH
end


try_solution '# 1 - Iterating over each line with each_line' do
  File.open(DESTINY_PATH, 'w+') do |destiny|
    File.open(SOURCE_PATH, 'r').each_line do |line|
      destiny << line
    end
  end
end

try_solution '# 2 - Iterating over each line with readlines and each' do
  File.open(DESTINY_PATH, 'w+') do |destiny|
    File.readlines(SOURCE_PATH).each{ |l| destiny << l }
  end
end

try_solution '# 3 - Iterating over each line with foreach' do
  File.open(DESTINY_PATH, 'w+') do |destiny|
    File.foreach(SOURCE_PATH){ |line| destiny << line }
  end
end
