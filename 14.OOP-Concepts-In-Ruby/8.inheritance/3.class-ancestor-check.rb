# working with class ancestor
class Animal
end

class Dog < Animal
end

class Cat < Animal
end

dog = Dog.new
cat = Cat.new

# checking class ancestors
puts Dog.ancestors  # Output: [Dog, Animal, Object, Kernel, BasicObject]
puts Cat.ancestors  # Output: [Cat, Animal, Object, Kernel, BasicObject]

# checking instance of
puts dog.is_a?(Animal)  # true
puts cat.is_a?(Animal)  # true
puts dog.is_a?(Cat)     # false

# checking kind of
puts dog.kind_of?(Animal)  # true
puts cat.kind_of?(Animal)  # true
puts cat.kind_of?(Dog)     # false