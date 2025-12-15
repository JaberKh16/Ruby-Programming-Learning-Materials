# working with recursive function in ruby
# Recursive Function: a function that calls itself in order to solve a problem.
def factorial(n)
    if n == 0 || n == 1
        1
    else
        n * factorial(n - 1)
    end
end

puts factorial(5)  # Output: 120
puts factorial(0)  # Output: 1
puts factorial(1)  # Output: 1
puts factorial(6)  # Output: 720