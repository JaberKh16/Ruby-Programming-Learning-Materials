# working with hash methods in Ruby
# defined a hash
person = { "name" => "Bob", "age" => 30 }
puts person # print the hash


# getting keys and values
keys = person.keys
values = person.values
puts "Keys: #{keys}"
puts "Values: #{values}"


# checking for key existence
puts person.key?("name")    # true
puts person.key?("address") # false


# deleting a key-value pair
person.delete("age")
puts person # print updated hash


# merging two hashes
additional_info = { "city" => "Chicago", "profession" => "Engineer" }
merged_hash = person.merge(additional_info)
puts merged_hash # print the merged hash


# size of the hash
puts "Size of merged hash: #{merged_hash.size}"
# clearing the hash
merged_hash.clear
puts merged_hash # print the cleared hash


# checking if hash is empty
puts "Is merged_hash empty? #{merged_hash.empty?}"


# converting hash to array
person_array = person.to_a
puts person_array # print the array converted from hash



# converting array back to hash
array = [["name", "Bob"], ["age", 30]]
array_to_hash = array.to_h
puts array_to_hash # print the hash converted from array



# iterating over hash
person.each do |key, value|
  puts "#{key}: #{value}"
end


# selecting key-value pairs based on condition
selected = person.select { |key, value| key == "name" }
puts selected # print the selected key-value pairs



# transforming hash values
transformed = person.transform_values { |value| value.to_s.upcase }
puts transformed # print the hash with transformed values



# fetching value with default
puts person.fetch("name", "Unknown")      # returns "Bob"
puts person.fetch("address", "Unknown")   # returns "Unknown"



# invert keys and values
inverted_hash = person.invert
puts inverted_hash # print the inverted hash


# slicing hash
sliced_hash = person.slice("name")
puts sliced_hash # print the sliced hash


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


# slicing hash with multiple keys
multi_sliced_hash = person.slice("name", "age")
puts multi_sliced_hash # print the multi-sliced hash


# updating hash with another hash
update_hash = { "age" => 31, "city" => "Boston" }
person.update(update_hash)
puts person # print the updated hash


# replacing hash contents
person.replace({ "name" => "Eve", "age" => 28 })
puts person # print the replaced hash



# hash equality check
hash1 = { "name" => "Bob", "age" => 30 }
hash2 = { "name" => "Bob", "age" => 30 }
puts hash1 == hash2 # true


# getting hash entries
entries = person.to_a
puts entries # print the hash entries as array of key-value pairs


# getting hash values as array
values_array = person.values
puts values_array # print the hash values as array


# getting hash keys as array
keys_array = person.keys
puts keys_array # print the hash keys as array


# checking if hash has a specific value
puts person.value?("Eve")  # true
puts person.value?(30)     # false


# getting hash default value
default_value_hash = Hash.new("Not Found")
puts default_value_hash.default # print the default value of the hash


# setting hash default value
default_value_hash.default = "No Value"
puts default_value_hash["missing_key"] # returns "No Value"


# converting hash to string
hash_string = person.to_s
puts hash_string # print the string representation of the hash


# converting string back to hash
require 'yaml'
yaml_string = person.to_yaml
parsed_from_yaml = YAML.load(yaml_string)
puts parsed_from_yaml # print the hash parsed from YAML string


# getting hash size
puts "Size of person hash: #{person.size}"  # print the size of the hash



# getting hash length
puts "Length of person hash: #{person.length}"  # print the length of the hash


# getting first key-value pair
first_pair = person.first
puts first_pair # print the first key-value pair


# getting last key-value pair
last_pair = person.last
puts last_pair # print the last key-value pair


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



