person = { "name" => "Bob", "age" => 30 }
puts person # print the hash

# getting hash key-value pairs as iterator
person.each do |key, value|
  puts "#{key}: #{value}"
end


# getting hash key-value pairs as enumerator
key_value_enum = person.each_pair
key_value_enum.each { |key, value| puts "#{key}: #{value}" }



# getting hash key-value pairs as block
person.each { |key, value| puts "#{key}: #{value}" }