# working with Proc objects in Ruby
# Proc is an object which encapsulate of a block of code that can be stored in a variable, passed to methods, 
# or another Proc, and executed at a later time.


# define a Proc
my_proc = Proc.new { |x| x ** 2 }
puts my_proc.call(4)  # Output: 16


# another way to define a Proc
another_proc = proc { |y| y + 5 }
puts another_proc.call(10)  # Output: 15

# Proc with multiple parameters
multi_param_proc = Proc.new { |a, b| a * b }
puts multi_param_proc.call(3, 7)  # Output: 21


# Proc with no parameters
no_param_proc = Proc.new { "Hello, Proc!" }
puts no_param_proc.call()  # Output: Hello, Proc!


# passing Proc as argument to a method
def execute_proc(prc, value)
    prc.call(value)
end

result = execute_proc(Proc.new { |n| n + 100 }, 50)
puts result  # Output: 150


# Proc with default parameter values
default_param_proc = Proc.new { |x = 20| x * 2 }
puts default_param_proc.call()     # Output: 40
puts default_param_proc.call(8)    # Output: 16


# converting a block to Proc
def block_to_proc(&block)
    block.call(3)
end

puts block_to_proc { |n| n ** 3 }  # Output: 27