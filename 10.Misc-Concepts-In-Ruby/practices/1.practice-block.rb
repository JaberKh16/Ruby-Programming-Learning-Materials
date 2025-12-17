# defining an arrasy
students_name = ['Jack', 'Kale', 'Peter', 'Tony']

# each associated with block {}
students_name.each { |student| puts student }


# with each_with_index
students_name.each_with_index do |student, index|
    puts student
    puts index
end