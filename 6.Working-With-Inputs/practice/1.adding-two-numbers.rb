# adding two numbers
puts "Enter first number:"
num1 = gets.chomp()

puts "Enter second number:"
num2 = gets.chomp()


# convert input strings to integers
num1 = num1.to_i # convert to integer using to_i()
num2 = num2.to_i # convert to integer using to_i()

# add the two numbers
sum = num1 + num2
puts "The sum of #{num1} and #{num2} is #{sum}"