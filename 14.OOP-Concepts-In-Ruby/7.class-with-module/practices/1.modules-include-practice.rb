# working with module include
module MathOperations
    def add(a, b)
        a + b
    end

    def subtract(a, b)
        a - b
    end
end

module StringOperations
    def concatenate(str1, str2)
        str1 + str2
    end

    def upcase_string(str)
        str.upcase
    end
end


module AdvancedOperations
    def add(a, b) # method name same as in MathOperations thus will get the priority in lookup chain
        a + b
    end

    def power(base, exponent)
        base**exponent
    end

    def square_root(number)
        Math.sqrt(number)
    end
end

# defining a class that includes the module: work as instance level
class Calculator
    include MathOperations # including the module means instance level
    include StringOperations
    include AdvancedOperations


    def multiply(a, b)
        a * b
    end

    def divide(a, b)
        return "Division by zero is not allowed." if b == 0
        a / b
    end
end


# create an instance of Calculator
calc = Calculator.new

# see the ancestors chain
puts Calculator.ancestors.inspect


# see the method lookup order with include
puts calc.add(10, 5)            # Output: 15 (from AdvancedOperations due to method lookup order)
puts calc.subtract(10, 5)       # Output: 5
puts calc.multiply(10, 5)       # Output: 50
puts calc.divide(10, 2)         # Output: 5
puts calc.divide(10, 0)         # Output: Division by zero is not allowed.
puts calc.concatenate("Hello, ", "World!")  # Output: Hello, World!
puts calc.upcase_string("hello")            # Output: HELLO
puts calc.power(2, 3)           # Output: 8
puts calc.square_root(16)       # Output: 4.0