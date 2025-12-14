# hash type in ruby
person = { "name" => "John", "age" => 30, "city" => "New York" }
puts person # print the hash    


# accessing hash values
puts person["name"] # access value for key "name"



# adding new key-value pair
person["profession"] = "Developer"
puts person # print updated hash



# empty hash
empty_hash = {}
empty_hash2 = Hash.new
puts empty_hash # print the empty hash


# creating hash using Hash literal
hash_literal = Hash["a" => 1, "b" => 2, "c" => 3]
puts hash_literal


# creating hash using Hash.new with default value
hash_with_default = Hash.new("default_value")
puts hash_with_default["non_existent_key"] # returns "default_value"









