# nested hash
nested_hash = {
  "person1" => { "name" => "Charlie", "age" => 35 },
  "person2" => { "name" => "Diana", "age" => 29 }
}
puts nested_hash # print the nested hash




# accessing nested hash values
puts nested_hash["person1"]["name"] # access name of person1
puts nested_hash["person2"]["age"]  # access age of person2


# adding new key-value pair to nested hash
nested_hash["person3"] = { "name" => "Eve", "age" => 32 }
puts nested_hash # print updated nested hash



# iterating over hash
nested_hash.each do |key, value|
  puts "#{key}: #{value}"
end