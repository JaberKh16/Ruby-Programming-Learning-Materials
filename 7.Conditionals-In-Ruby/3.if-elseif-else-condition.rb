# working with if elseif condition in Ruby
number = 0

if number > 0
  puts "#{number} is a positive number."
elsif number < 0
  puts "#{number} is a negative number."
else
  puts "#{number} is zero."
end

if number.even?
  puts "#{number} is an even number."
elsif number.odd?
  puts "#{number} is an odd number."
else
  puts "#{number} is neither even nor odd."
end