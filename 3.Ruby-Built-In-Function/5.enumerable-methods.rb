# working with enumerable methods in ruby
# Enumerable methods are used to traverse, search, sort, and manipulate collections like arrays and hashes.

# array enumerable methods
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
puts friends.map { |name| name.upcase }              #=> ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"]
puts friends.select { |name| name.start_with?('L') } #=> ["Leo", "Leila"]
puts friends.reject { |name| name.length <= 4 }      #=> ["Sharon", "Leila", "Brian"]
puts friends.reduce("") { |acc, name| acc + name[0] }    #=> "SLBLA"
puts friends.each { |name| puts name }                  # prints each friend's name



# hash enumerable methods
person = { "name" => "Alice", "age" => 25, "city" => "Los Angeles" }
puts person.map { |key, value| [key.upcase, value] }.to_h #=> {"NAME"=>"Alice", "AGE"=>25, "CITY"=>"Los Angeles"}
puts person.select { |key, value| key == "name" } #=> {"name"=>"Alice"}
puts person.reject { |key, value| value.is_a?(Integer) } #=> {"name"=>"Alice", "city"=>"Los Angeles"}
puts person.reduce({}) { |acc, (key, value)| acc.merge({ key => value.to_s }) } #=> {"name"=>"Alice", "age"=>"25", "city"=>"Los Angeles"}
puts person.each { |key, value| puts "#{key}: #{value}" } # prints each key-value pair    


# string enumerable methods
# Note: Strings need to be converted to arrays of characters for some enumerable methods.
str = "hello"
puts str.chars.map { |char| char.upcase }.join  #=> "HELLO"
puts str.each_char { |char| puts char }          # prints each character
puts str.bytes.map { |byte| byte + 1 }           #=> [105, 102, 109, 109, 112]
puts str.split("").select { |char| "aeiou".include?(char) } #=> ["e", "o"]
puts str.split("").reject { |char| "aeiou".include?(char) } #=> ["h", "l", "l"]
