# working with loop basic usage
# Ruby 'loop' is an infinite loop construct that continues until explicitly broken.
i = 0
loop do
  puts "Iteration number: #{i}"
  i += 1
  break if i >= 5
end