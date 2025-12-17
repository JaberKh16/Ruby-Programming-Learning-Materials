# working class with modules
module MathOperations
    def add(a, b)
        a + b
    end

    def subtract(a, b)
        a - b
    end
end

# defining a class that includes the module: work as instance level
class Calculator
    include MathOperations # including the module means instance level

    def multiply(a, b)
        a * b
    end

    def divide(a, b)
        return "Division by zero is not allowed." if b == 0
        a / b
    end
end



# using the module methods at instance level
calc = Calculator.new

# see the ancestors chain
puts SuperCalculator.ancestors.inspect

# see the method lookup order with include
puts calc.add(10, 5)        # Output: 15
puts calc.subtract(10, 5)   # Output: 5
puts calc.multiply(10, 5)   # Output: 50
puts calc.divide(10, 2)     # Output: 5
puts calc.divide(10, 0)     # Output: Division by zero is not allowed.


