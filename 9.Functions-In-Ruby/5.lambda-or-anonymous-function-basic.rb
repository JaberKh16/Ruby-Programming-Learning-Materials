# working with lambdas in ruby
my_lambda = lambda { |x| x * 2 }
puts my_lambda.call(5)  # Output: 10


# another way to define lambda
another_lambda = ->(y) { y + 3 }
puts another_lambda.call(7)  # Output: 10


# lambda with multiple parameters
multi_param_lambda = ->(a, b) { a + b }
puts multi_param_lambda.call(4, 6)  # Output: 10


# lambda with no parameters
no_param_lambda = -> { "Hello, Lambda!" }
puts no_param_lambda.call()  # Output: Hello, Lambda!



# passing lambda as argument to a method
def execute_lambda(lam, value)
    lam.call(value)
end


result = execute_lambda(->(n) { n ** 2 }, 5)
puts result  # Output: 25


# lambda with default parameter values
default_param_lambda = ->(x = 10) { x * 3 }
puts default_param_lambda.call()     # Output: 30
puts default_param_lambda.call(5)    # Output: 15