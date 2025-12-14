# working with mathematical operators in Ruby
a = 10
b = 3

puts a + b      # addition
puts a - b      # subtraction
puts a * b      # multiplication
puts a / b      # division
puts a % b      # modulus
puts a ** b     # exponentiation


# combined assignment operators
a += 5          # a = a + 5
puts a
a -= 2          # a = a - 2
puts a
a *= 3          # a = a * 3
puts a
a /= 4          # a = a / 4
puts a
a %= 3          # a = a % 3
puts a
a **= 2         # a = a ** 2
puts a


# unary operators
x = 5
puts -x         # negation
puts +x         # unary plus



# logical operators with numbers
num1 = 8
num2 = 12
puts (num1 < num2) && (num1 > 0)   # logical AND
puts (num1 > num2) || (num1 > 0)   # logical OR
puts !(num1 > num2)                # logical NOT

# comparison operators
puts num1 == num2   # equal to
puts num1 != num2   # not equal to
puts num1 > num2    # greater than
puts num1 < num2    # less than
puts num1 >= num2   # greater than or equal to
puts num1 <= num2   # less than or equal to


# spaceship operator
puts num1 <=> num2  # returns -1, 0, or 1


# ternary operator
result = (num1 > num2) ? "num1 is greater" : "num2 is greater or equal"
puts result





