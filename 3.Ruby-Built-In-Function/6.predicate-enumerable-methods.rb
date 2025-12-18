=begin
    # working with predicate enumerable methods
    # predicate enumerable methods are having ? which returns boolean value
    # methods are: 
        1. include?  # check if whether a particular element exists in the collection
        2. any?,     # check if any element exists in the collection
        3. all?,     # check whether all elements exists in the collection
        4. none?     # check if none elements exists in the collection
        5. one?      # check whether all,any or none of the elements exists

=end

# Example: 1. Example To Understand include?()
numbers = [5, 6, 7, 8]
element = 6
result = false

numbers.each do |number|
  if number == element
    result = true
    break
  end
end

result # => true


numbers = [5, 6, 7, 8]

puts "Predicate Method: include?()"
numbers.include?(6) #=> true
numbers.include?(3) #=> false



# Example: 2. Example To Understand any?()
numbers = [21, 42, 303, 499, 550, 811]
result = false

numbers.each do |number|
  if number > 500
    result = true
    break
  end
end
result #=> true

numbers = [21, 42, 303, 499, 550, 811]
puts "Predicate Method: any?()"
numbers.any? { |number| number > 500 } #=> true
numbers.any? { |number| number < 20 } #=> false



# Example: 3. Example To Understand all?()
fruits = ["apple", "banana", "strawberry", "pineapple"]
matches = []
result = false

fruits.each do |fruit|
  if fruit.length > 3
    matches.push(fruit)
  end
end

result = fruits.length == matches.length
result #=> true



fruits = ["apple", "banana", "strawberry", "pineapple"]
puts "Predicate Method: all?()"
fruits.all? { |fruit| fruit.length > 3 } #=> true
fruits.all? { |fruit| fruit.length > 6 } #=> false


# Example: 4. Example To Understand none?()
fruits = ["apple", "banana", "strawberry", "pineapple"]
result = false

fruits.each do |fruit|
  if fruit.length > 10
    result = false
    break
  end
  result = true
end
result #=> true


fruits = ["apple", "banana", "strawberry", "pineapple"]
puts "Predicate Method: none?()"
fruits.none? { |fruit| fruit.length > 10 } #=> true
fruits.none? { |fruit| fruit.length > 6 } #=> false



fruits = ["apple", "banana", "strawberry", "pineapple"]
puts "Predicate Method: one?()"
fruits.one? { |fruit| fruit.length > 9 } #=> true
fruits.one? { |fruit| fruit.length > 2 } #=> false



