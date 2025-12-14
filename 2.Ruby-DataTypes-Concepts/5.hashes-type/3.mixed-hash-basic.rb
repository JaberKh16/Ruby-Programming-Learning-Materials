
# mixed key types in hash
mixed_key_hash = { "name" => "Bob", age: 28, 10 => "ten" }
puts mixed_key_hash # print the mixed key type hash


# accessing mixed key type hash values
puts mixed_key_hash["name"] # access value for key "name"
puts mixed_key_hash[:age]   # access value for key :age
puts mixed_key_hash[10]     # access value for key 10



# hash with default value for missing keys
default_hash = Hash.new(0)
default_hash["a"] += 1
default_hash["b"] += 2
puts default_hash # print the hash with default values