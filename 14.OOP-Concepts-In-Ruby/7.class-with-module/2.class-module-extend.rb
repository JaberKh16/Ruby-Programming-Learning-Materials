# working class with modules
module MathOperations
    def add(a, b)
        a + b
    end

    def subtract(a, b)
        a - b
    end
end


# define a class that extends the module: work as class level
class AdvancedCalculator
    extend MathOperations # extending the module means class level

    def self.multiply(a, b)
        a * b
    end

    def self.divide(a, b)
        return "Division by zero is not allowed." if b == 0
        a / b
    end
end


# using the module methods at class level
puts AdvancedCalculator.add(20, 10)        # Output: 30
puts AdvancedCalculator.subtract(20, 10)   # Output: 10
puts AdvancedCalculator.multiply(20, 10)   # Output: 200
puts AdvancedCalculator.divide(20, 2)      # Output: 10
puts AdvancedCalculator.divide(20, 0)      # Output: Division by zero is not allowed.