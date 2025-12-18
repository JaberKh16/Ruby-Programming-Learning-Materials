=begin
    Modules are basically the concepts of modularity why its can be think of a two things
    which are - Namespaces and Mixins.

    Interface => provides a contract what class can do
    Mixins => provides a way to share (mix-in) ready code amoong multiple classes

    Ruby Built-in modules like Enumerable and Comparable which can do the hard work
    for you.
=end

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
