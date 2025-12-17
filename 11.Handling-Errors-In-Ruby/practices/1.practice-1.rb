# excercise: working with catch throw statement in ruby

# define an array
array = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

counter = 0
search_value = nil


def find_in_array(array, search_value)
    catch(:found) do
        array.each do |row|
            row.each do |element|
                counter += 1
                if element == search_value
                    puts "Value #{search_value} found after checking #{counter} elements."
                    throw :found
                end
            end
        end
        puts "Value #{search_value} not found after checking #{counter} elements."
    end
end

# example usage
puts "Enter a number to search for (1-9):"
search_value = gets.chomp.to_i
find_in_array(array, search_value)