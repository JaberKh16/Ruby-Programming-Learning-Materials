# define a defautl argument function
def greet(name = "Guest")
    puts "Hello, #{name}!"
end

# call the function with and without argument
greet("Alice")  # Output: Hello, Alice!
greet()         # Output: Hello, Guest!