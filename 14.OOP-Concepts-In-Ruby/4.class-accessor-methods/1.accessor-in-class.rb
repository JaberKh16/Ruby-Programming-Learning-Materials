# Working with accessor with class
# Accessor methods in Ruby are used to create getter and setter methods for instance variables in a class.
# They provide a convenient way to read and modify the values of instance variables from outside the class.


# defining a class with accessor methods
class Person
  # accessor attributes
  attr_accessor :name, :age
  # accessor methods with only reader and writer
  # consider this as settter and getter methods respectively
  attr_reader :id
  attr_writer :email

  # class variable
  @@population = 0

  def initialize(name, age, email)
    @name = name
    @age = age
    @email = email

    @@population += 1
    @id = @@population
  end

  # class method
  def self.population
    @@population
  end
end

# creating an instance
person = Person.new("Alice", 25, "alice@example.com")

# using accessors
puts person.name        # getter
person.name = "Alicia"  # setter
puts person.name

puts person.age
person.age = 26
puts person.age

# reader only
puts person.id

# writer only
person.email = "new_email@example.com"
# puts person.email  # ❌ NoMethodError

puts Person.population

