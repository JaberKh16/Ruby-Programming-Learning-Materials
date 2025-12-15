# define a function that calculates power of a number
def pow(base_num, pow_num)
    result = 1
    pow_num.times do |index|
        result *= base_num
    end
    return result
end


# call the function and print the result
puts pow(2, 3)  # Output: 8
puts pow(5, 4)  # Output: 625
puts pow(3, 3)  # Output: 27