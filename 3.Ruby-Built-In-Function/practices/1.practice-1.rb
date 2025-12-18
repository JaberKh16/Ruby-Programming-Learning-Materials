numbers = [5, 12, 121, 35, 754, 0]
search_element = 12
result = false


numbers.each do |number|
    if number == element
        result = true
        break
    end
end

if result == true   
    puts "Found"
else 
    puts "Not Found"
end


# using enumerable predicate method => include?
numbers.include?(14) # if found return true