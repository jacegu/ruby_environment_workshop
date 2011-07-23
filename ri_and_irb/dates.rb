require 'date'

# Current date with and without time
today = Date.today
puts today.to_s
now   = DateTime.now
puts now.to_s

# Parsed date with and without time
today = Date.parse '2011/07/23'
puts today.to_s
now   = DateTime.parse '2011-07-23 15:35:00+02:00'
puts now.to_s

# Day of the week of 8th day of every month of the last 10 years
# (limted to only 1 year to improve readabilty of the output)
NUMBER_OF_YEARS = 1

d = Date.parse '2011-12-08'

1.upto NUMBER_OF_YEARS do
  puts "\n* Year #{d.year} #{'*' * 15}"
  1.upto 12 do
    puts "#{d.day}/#{d.month}/#{d.year} was:\t #{Date::DAYNAMES[d.wday]}"
    d = d.prev_month
  end
end
