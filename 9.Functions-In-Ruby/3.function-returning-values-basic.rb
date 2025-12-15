# define a function that returns a value

# example: function return single value
def add(a, b)
    return a + b
end

# call the function and store the returned value
sum = add(5, 7)
puts "The sum is #{sum}"  # Output: The sum is 12



# example: function return multiple values
def calculate(a, b)
    sum = a + b
    product = a * b
    return sum, product
end

# call the function and store the returned values
sum, product = calculate(4, 6)
puts "Sum: #{sum}, Product: #{product}"  # Output: Sum: 10, Product: 24