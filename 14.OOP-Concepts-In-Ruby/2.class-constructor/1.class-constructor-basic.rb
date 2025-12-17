# class concepts in ruby
class Person
    # defining attributes
    attr_accessor :name, :age

    # initialize method (constructor)
    def initialize(name, age)
        @name = name
        @age = age
    end

    # method to display person details
    def display_info()
        puts "Name: #{@name}, Age: #{@age}"
    end

    # method to ensure adult or not
    def is_adult()
        if @age >= 18
            return true
        else
            return false
        end
    end
end

# create an object of the Person class
person1 = Person.new("Alice", 30)
person1.display_info()  # Output: Name: Alice, Age: 30
puts "Is Adult: #{person1.is_adult()}"  # Output: Is Adult: true