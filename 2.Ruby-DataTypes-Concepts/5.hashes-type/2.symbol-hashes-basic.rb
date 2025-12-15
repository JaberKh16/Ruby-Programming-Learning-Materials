# symbol keys in hash
# syntaxes: { symbol: value, :symbol => value }
# symbols are immutable and unique, making them more memory efficient than strings for hash keys
symbol_hash = { name: "Alice", age: 25, :profession: "Designer" }
puts symbol_hash # print the symbol key hash



# accessing symbol key hash values
puts symbol_hash[:name] # access value for key :name


# adding new key-value pair to symbol key hash
symbol_hash[:city] = "Los Angeles"
puts symbol_hash # print updated symbol key hash