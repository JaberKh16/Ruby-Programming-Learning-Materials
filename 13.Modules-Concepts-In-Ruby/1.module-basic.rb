# working with modules in Ruby
module Greetings
    def self.hello(name)
        puts "Hello, #{name}!"
    end

    def self.goodbye(name)
        puts "Goodbye, #{name}!"
    end
end


# using the module
# include Greetings # removing this wont be issue thus module calling will work

# calling the module
Greetings.hello("Alice")    # Output: Hello, Alice!
Greetings.goodbye("Bob")    # Output: Goodbye, Bob!