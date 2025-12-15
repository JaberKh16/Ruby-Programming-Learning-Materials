
person = { "name" => "Bob", "age" => 30 }
puts person # print the hash


# merging two hashes
additional_info = { "city" => "Chicago", "profession" => "Engineer" }
merged_hash = person.merge(additional_info)
puts merged_hash # print the merged hash


# converting hash to array
person_array = person.to_a
puts person_array # print the array converted from hash



# converting array back to hash
array = [["name", "Bob"], ["age", 30]]
array_to_hash = array.to_h
puts array_to_hash # print the hash converted from array





# transforming hash values
transformed = person.transform_values { |value| value.to_s.upcase }
puts transformed # print the hash with transformed values




# converting hash to JSON
require 'json'
json_string = person.to_json
puts json_string # print the JSON string



# parsing JSON back to hash
parsed_hash = JSON.parse(json_string)
puts parsed_hash # print the parsed hash


# default value for missing keys
default_hash = Hash.new("N/A")
puts default_hash["non_existent_key"] # returns "N/A"



# freezing a hash
frozen_hash = person.freeze
# frozen_hash["name"] = "Alice" # This will raise a RuntimeError
puts frozen_hash # print the frozen hash


# duping a hash
duped_hash = person.dup
duped_hash["name"] = "Alice"
puts person      # original hash remains unchanged
puts duped_hash  # print the duped and modified hash


# compacting a hash (removing nil values)
hash_with_nil = { "name" => "Bob", "age" => nil, "city" => "New York" }
compacted_hash = hash_with_nil.compact
puts compacted_hash # print the compacted hash


# flattening a hash
flattened_array = person.flatten
puts flattened_array # print the flattened array


# rehashing a hash
rehash_example = { "name" => "Bob", "age" => 30 }
rehash_example.rehash
puts rehash_example # print the rehashed hash


# converting keys to symbols
symbolized_hash = person.transform_keys { |key| key.to_sym }
puts symbolized_hash # print the hash with symbolized keys



# converting keys to strings
stringified_hash = symbolized_hash.transform_keys { |key| key.to_s }
puts stringified_hash # print the hash with stringified keys




# converting hash to string
hash_string = person.to_s
puts hash_string # print the string representation of the hash


# converting string back to hash
require 'yaml'
yaml_string = person.to_yaml
parsed_from_yaml = YAML.load(yaml_string)
puts parsed_from_yaml # print the hash parsed from YAML string




# converting hash to set
require 'set'
hash_set = person.to_set
puts hash_set # print the set converted from hash


# getting hash pairs
pairs = person.to_a
puts pairs # print the hash pairs as array of key-value pairs

# getting hash key-value pairs as array
key_value_array = person.to_a
puts key_value_array # print the hash key-value pairs as array



