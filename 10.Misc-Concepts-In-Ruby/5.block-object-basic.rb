# working with block objects in Ruby
# A block is a chunk of code that you can pass to methods as an argument.

# defining a method that takes a block
def greet(name)
    puts "Before the block"
    yield(name)  # calling the block
    puts "After the block"
end

# calling the method with a block
greet("Alice") do |n|
    puts "Hello, #{n}!"
end


# another example with numbers
def calculate_square(number)
    puts "Calculating square for #{number}"
    result = yield(number)  # calling the block
    puts "The square is #{result}"
end

# calling the method with a block
calculate_square(5) do |num|
    num * num
end


# using block with arrays
numbers = [1, 2, 3, 4, 5]
squared_numbers = numbers.map do |n|
    n ** 2
end

puts "Original numbers: #{numbers}"
puts "Squared numbers: #{squared_numbers}"



# using block with custom iteration
def custom_each(array)
    for element in array
        yield(element)  # calling the block
    end
end

# calling the custom_each method with a block
custom_each([10, 20, 30]) do |item|
    puts "Item: #{item}"
end


# block with multiple parameters
def combine_strings(str1, str2)
    yield(str1, str2)  # calling the block
end
# calling the method with a block
combine_strings("Hello", "World") do |s1, s2|
    puts "#{s1}, #{s2}!"
end



# block with no parameters
def say_hello
    yield  # calling the block
end

# calling the method with a block
say_hello do
    puts "Hello from the block!"
end



# block with default parameter values
def repeat_message(times)
    yield(times)  # calling the block
end
# calling the method with a block
repeat_message(3) do |n|
    n.times { puts "This is a repeated message." }
end


# converting a Proc to a block
def proc_to_block(&block)
    block.call(7)
end

my_proc = Proc.new { |x| x + 10 }
puts proc_to_block(&my_proc)  # Output: 17


# using block with range
range = (1..5)
doubled_values = range.map do |n|
    n * 2
end

puts "Original range: #{range.to_a}"
puts "Doubled values: #{doubled_values}"



# using block with strings
words = ["hello", "world", "ruby"]
upcased_words = words.map do |word|
    word.upcase
end

puts "Original words: #{words}"
puts "Upcased words: #{upcased_words}"



# using block with hashes
person = { "name" => "John", "age" => 30, "city" => "New York" }
person.each do |key, value|
    puts "#{key}: #{value}"
end


# using block with custom sorting
unsorted_numbers = [5, 2, 8, 1, 4]
sorted_numbers = unsorted_numbers.sort do |a, b|
    a <=> b  # ascending order
end
puts "Unsorted numbers: #{unsorted_numbers}"
puts "Sorted numbers: #{sorted_numbers}"



# using block with file operations
File.open("sample.txt", "w") do |file|
    file.puts "This is a sample file."
    file.puts "It contains multiple lines of text."
end
File.open("sample.txt", "r") do |file|
    file.each_line do |line|
        puts line
    end
end


# using block with exception handling
def safe_divide(a, b)
    yield(a, b)  # calling the block
rescue ZeroDivisionError
    puts "Error: Division by zero is not allowed."
end
# calling the method with a block
safe_divide(10, 2) do |x, y|
    puts "Result: #{x / y}"
end


safe_divide(10, 0) do |x, y|
    puts "Result: #{x / y}"
end


# using block with time operations
def measure_time
    start_time = Time.now
    yield  # calling the block
    end_time = Time.now
    duration = end_time - start_time
    puts "Time taken: #{duration} seconds"
end

# calling the method with a block
measure_time do
    sum = 0
    (1..1000000).each { |n| sum += n }
    puts "Sum: #{sum}"
end