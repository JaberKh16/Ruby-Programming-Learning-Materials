# working with class with module prepend
module MathOperations
    def add(a, b)
        a + b
    end

    def subtract(a, b)
        a - b
    end
end

# defining a class that prepends the module: work as instance level with higher priority
class SuperCalculator
    prepend MathOperations # prepending the module means instance level with higher priority

    def multiply(a, b)
        a * b
    end

    def divide(a, b)
        return "Division by zero is not allowed." if b == 0
        a / b
    end
end


# using the module methods at instance level
super_calc = SuperCalculator.new

# see the ancestors chain
puts SuperCalculator.ancestors.inspect

# see the difference in method lookup order with prepend
puts super_calc.add(15, 10)        # Output: 25
puts super_calc.subtract(15, 10)   # Output: 5
puts super_calc.multiply(15, 10)   # Output: 150
puts super_calc.divide(15, 3)      # Output: 5
puts super_calc.divide(15, 0)      # Output: Division by zero is not allowed.