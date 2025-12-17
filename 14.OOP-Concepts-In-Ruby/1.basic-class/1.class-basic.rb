# class concepts in ruby
class Person
    # defining attributes
    attr_accessor :name, :age


    # method to display person details
    def display_info()
        puts "Name: #{@name}, Age: #{@age}"
    end
end

# create an object of the Person class
person1 = Person.new()

# set attributes and display info
person1.name = "Alice"
person1.age = 30
person1.display_info()  # Output: Name: Alice, Age: 30