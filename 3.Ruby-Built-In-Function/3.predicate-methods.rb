# predicate methods in ruby
# predicate methods return boolean values (true or false)
numbers = [1, 2, 3, 4, 5]
puts numbers.empty?        # checks if the array is empty
puts numbers.include?(3)   # checks if the array includes the number 3
puts numbers.all? { |n| n > 0 }  # checks if all numbers are greater than 0
puts numbers.any? { |n| n.even? } # checks if any number is even
puts numbers.none? { |n| n < 0 }  # checks if no numbers are negative


# string predicate methods
str = "Hello, World!"
puts str.start_with?("Hello")  # checks if string starts with "Hello"
puts str.end_with?("World!")    # checks if string ends with "World!"
puts str.include?("lo, Wo")     # checks if string includes "lo, Wo"
puts str.empty?                 # checks if string is empty
puts str.match?(/World/)        # checks if string matches the regex /World/


# hash predicate methods
person = { "name" => "Alice", "age" => 25 }
puts person.key?("name")        # checks if key "name" exists
puts person.value?(30)          # checks if value 30 exists