def find_even_od_number(number)
    if number.even?
        puts "#{number} is an even number."
    else
        puts "#{number} is an odd number."
    end
end

# calling the function with different arguments
find_even_od_number(10)
find_even_od_number(7)
find_even_od_number(0)