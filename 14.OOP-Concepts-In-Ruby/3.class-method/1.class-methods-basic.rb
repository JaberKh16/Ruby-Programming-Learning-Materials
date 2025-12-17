# working with  class methods
class Calculator
    # defining an class variable using @@varname
    @@instance_count = 0

    # defining a class method
    def self.add(a, b)
        a + b
    end

    def self.subtract(a, b)
        a - b
    end

    def self.multiply(a, b)
        a * b
    end

    def self.divide(a, b)
        return "Division by zero is not allowed." if b == 0
        a / b
    end

    def self.instance_count
        @@instance_count
    end

    # create a setter method for class variable
    def self.increment_instance_count=(new_value)
        @@instance_count = new_value
    end
end

# using the class methods
puts Calculator.add(10, 5)        # Output: 15
puts Calculator.subtract(10, 5)   # Output: 5
puts Calculator.multiply(10, 5)   # Output: 50
puts Calculator.divide(10, 2)     # Output: 5
puts Calculator.divide(10, 0)     # Output: Division by zero is not allowed.
puts "Instance Count: #{Calculator.instance_count}"  # Output: Instance Count: 0
Calculator.increment_instance_count = 5
puts "Updated Instance Count: #{Calculator.instance_count}"  # Output: Updated Instance Count: