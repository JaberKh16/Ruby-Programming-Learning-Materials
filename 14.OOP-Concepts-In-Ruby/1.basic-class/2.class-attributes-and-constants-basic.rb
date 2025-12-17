# working with class attributes and constants in ruby
class Person
  # class variable (shared across all instances)
  @@population = 0

  # constant
  SPECIES = "Homo sapiens"

  def initialize(name)
    @name = name
    @@population += 1
  end

  # instance method
  def calculate_population
    @@population
  end

  # class method (preferred for class-level data)
  def self.population
    @@population
  end
end

# creating instances
person1 = Person.new("Alice")
person2 = Person.new("Bob")

puts Person::SPECIES          # => Homo sapiens
puts Person.population        # => 2
puts person1.calculate_population  # => 2
