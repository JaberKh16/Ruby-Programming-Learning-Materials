# working with array methods in Ruby
# defined an array
numbers = [10, 20, 30, 40, 50]
puts numbers # print the array

# push method - adds element to the end
numbers.push(60)
puts "After push: #{numbers}"

# pop method - removes last element
last_element = numbers.pop
puts "Popped element: #{last_element}"
puts "After pop: #{numbers}"


# unshift method - adds element to the beginning
numbers.unshift(5)
puts "After unshift: #{numbers}"


# shift method - removes first element
first_element = numbers.shift
puts "Shifted element: #{first_element}"
puts "After shift: #{numbers}"


# insert method - adds element at specific index
numbers.insert(2, 25) # insert 25 at index 2
puts "After insert: #{numbers}"


# delete method - removes specific element
numbers.delete(30)
puts "After delete: #{numbers}"


# delete_at method - removes element at specific index
removed_element = numbers.delete_at(3) # remove element at index 3
puts "Deleted element at index 3: #{removed_element}"
puts "After delete_at: #{numbers}"



# length method - returns the number of elements
puts "Length of array: #{numbers.length}"


# include? method - checks if element exists
puts "Array includes 20? #{numbers.include?(20)}"
puts "Array includes 100? #{numbers.include?(100)}"


# index method - returns index of first occurrence of element
index_of_25 = numbers.index(25)
puts "Index of 25: #{index_of_25}"


# reverse method - reverses the array
reversed_array = numbers.reverse
puts "Reversed array: #{reversed_array}"


# sort method - sorts the array
sorted_array = numbers.sort
puts "Sorted array: #{sorted_array}"


# clear method - removes all elements
numbers.clear
puts "After clear: #{numbers}"

# check if array is empty
puts "Is the array empty? #{numbers.empty?}"

# creating array again for demonstration
numbers = [3, 1, 4, 2]
puts "New array: #{numbers}"

# sort! method - sorts the array in place
numbers.sort!
puts "Array after sort!: #{numbers}"


# reverse! method - reverses the array in place
numbers.reverse!
puts "Array after reverse!: #{numbers}"


# concat method - concatenates another array
more_numbers = [5, 6, 7]
numbers.concat(more_numbers)
puts "After concat: #{numbers}"



# join method - joins array elements into a string
joined_string = numbers.join(", ")
puts "Joined string: #{joined_string}"

# slice method - returns a sub-array
sub_array = numbers.slice(1, 3) # from index 1, take 3 elements
puts "Sliced sub-array: #{sub_array}"


# fill method - fills array with a specific value
numbers.fill(0)
puts "After fill: #{numbers}"


# sample method - returns a random element
random_element = numbers.sample
puts "Random element from array: #{random_element}"


# shuffle method - returns a new array with elements shuffled
shuffled_array = numbers.shuffle
puts "Shuffled array: #{shuffled_array}"


# shuffle! method - shuffles the array in place
numbers.shuffle!
puts "Array after shuffle!: #{numbers}"


# cycle method - iterates over the array elements multiple times
puts "Cycling through array elements:"
numbers.cycle(2) do |num|
  puts num
end


# each_with_index method - iterates with index
puts "Array elements with their indices:"
numbers.each_with_index do |num, index|
  puts "Index #{index}: #{num}"
end


# map method - creates a new array by applying a block to each element
squared_array = numbers.map { |num| num ** 2 }
puts "Squared array: #{squared_array}"



# select method - selects elements based on a condition
even_numbers = numbers.select { |num| num.even? }
puts "Even numbers: #{even_numbers}"



# reject method - rejects elements based on a condition
odd_numbers = numbers.reject { |num| num.even? }
puts "Odd numbers: #{odd_numbers}"


# reduce method - reduces the array to a single value
sum_of_elements = numbers.reduce(0) { |sum, num| sum + num }
puts "Sum of elements: #{sum_of_elements}"



# flatten method - flattens a nested array
nested_array = [1, [2, 3], [4, [5, 6]]]
flattened_array = nested_array.flatten
puts "Flattened array: #{flattened_array}"


# uniq method - removes duplicate elements
array_with_duplicates = [1, 2, 2, 3, 4, 4, 5]
unique_array = array_with_duplicates.uniq
puts "Unique array: #{unique_array}"



# compact method - removes nil elements
array_with_nil = [1, nil, 2, nil, 3]
compacted_array = array_with_nil.compact
puts "Compacted array: #{compacted_array}"


# zip method - combines elements from multiple arrays
array1 = [1, 2, 3]
array2 = ["a", "b", "c"]
zipped_array = array1.zip(array2)
puts "Zipped array: #{zipped_array}"


# flatten! method - flattens the array in place
nested_array.flatten!
puts "Nested array after flatten!: #{nested_array}"



# uniq! method - removes duplicates in place
array_with_duplicates.uniq!
puts "Array with duplicates after uniq!: #{array_with_duplicates}"


# compact! method - removes nils in place
array_with_nil.compact!
puts "Array with nil after compact!: #{array_with_nil}"


# length method - returns the number of elements
puts "Length of array: #{numbers.length}"


# size method - returns the number of elements
puts "Size of array: #{numbers.size}"


# count method - returns the number of occurrences of a specific element
numbers = [1, 2, 2, 3, 2, 4]
count_of_2 = numbers.count(2)
puts "Count of 2 in array: #{count_of_2}"


# first method - returns the first element
first_element = numbers.first
puts "First element: #{first_element}"



# last method - returns the last element
last_element = numbers.last
puts "Last element: #{last_element}"


# take method - returns the first n elements
first_three = numbers.take(3)
puts "First three elements: #{first_three}"


# drop method - drops the first n elements and returns the rest
dropped_two = numbers.drop(2)
puts "Array after dropping first two elements: #{dropped_two}"



# find method - returns the first element that matches a condition
first_even = numbers.find { |num| num.even? }
puts "First even number: #{first_even}"


# find_all method - returns all elements that match a condition
all_evens = numbers.find_all { |num| num.even? }
puts "All even numbers: #{all_evens}"


# min method - returns the minimum element
min_element = numbers.min
puts "Minimum element: #{min_element}"


# max method - returns the maximum element
max_element = numbers.max
puts "Maximum element: #{max_element}"

# sample method - returns a random element
random_element = numbers.sample
puts "Random element: #{random_element}"



# each_slice method - iterates over the array in slices of a given size
puts "Array elements in slices of 2:"
numbers.each_slice(2) do |slice|
  puts slice.inspect
end



# each_cons method - iterates over the array in consecutive groups of a given size
puts "Array elements in consecutive groups of 3:"
numbers.each_cons(3) do |group|
  puts group.inspect
end


# cycle method - iterates over the array elements multiple times
puts "Cycling through array elements three times:"
numbers.cycle(3) do |num|
  puts num
end 


# partition method - splits the array into two arrays based on a condition
even_partition, odd_partition = numbers.partition { |num| num.even? }
puts "Even partition: #{even_partition}"
puts "Odd partition: #{odd_partition}"


# group_by method - groups elements based on a condition
grouped = numbers.group_by { |num| num.even? ? "Even" : "Odd" }
puts "Grouped array: #{grouped}"




