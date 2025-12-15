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


# getting hash values as array
values_array = person.values
puts values_array # print the hash values as array


# getting hash keys as array
keys_array = person.keys
puts keys_array # print the hash keys as array


# getting hash size
puts "Size of person hash: #{person.size}"  # print the size of the hash


# getting hash length
puts "Length of person hash: #{person.length}"  # print the length of the hash



# fetching value with default
puts person.fetch("name", "Unknown")      # returns "Bob"
puts person.fetch("address", "Unknown")   # returns "Unknown"


# getting first key-value pair
first_pair = person.first
puts first_pair # print the first key-value pair


# getting last key-value pair
last_pair = person.last
puts last_pair # print the last key-value pair





# hash equality check
hash1 = { "name" => "Bob", "age" => 30 }
hash2 = { "name" => "Bob", "age" => 30 }
puts hash1 == hash2 # true




# checking if hash has a specific value
puts person.value?("Eve")  # true
puts person.value?(30)     # false


# getting hash default value
default_value_hash = Hash.new("Not Found")
puts default_value_hash.default # print the default value of the hash


# setting hash default value
default_value_hash.default = "No Value"
puts default_value_hash["missing_key"] # returns "No Value"



# deleting a key-value pair
person.delete("age")
puts person # print updated hash


# merging two hashes
additional_info = { "city" => "Chicago", "profession" => "Engineer" }
merged_hash = person.merge(additional_info)
puts merged_hash # print the merged hash


# selecting key-value pairs based on condition
selected = person.select { |key, value| key == "name" }
puts selected # print the selected key-value pairs


# invert keys and values
inverted_hash = person.invert
puts inverted_hash # print the inverted hash


# slicing hash
sliced_hash = person.slice("name")
puts sliced_hash # print the sliced hash


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




# clearing the hash
merged_hash.clear
puts merged_hash # print the cleared hash


# checking if hash is empty
puts "Is merged_hash empty? #{merged_hash.empty?}"


