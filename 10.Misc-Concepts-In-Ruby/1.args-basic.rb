# *args allows a method to accept any number of arguments
def find_min(*args)
    min = args[0]
    args.each do |num|
        min = num if num < min
    end
    min # return the minimum value
end

puts find_min(5, 3, 8, 1, 4) # Output: 1
puts find_min(10, 20)       # Output: 10
puts find_min(-5, -10, 0)   # Output: -10