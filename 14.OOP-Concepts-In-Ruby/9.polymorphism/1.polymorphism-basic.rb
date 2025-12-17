# working with the concept of polymorphism in Ruby
class Dog
    def speak
        "Woof!"
    end
end

class Cat
    def speak
        "Meow!"
    end
end

def animal_sound(animal)
    puts animal.speak
end


# create instances of Dog and Cat
dog = Dog.new
cat = Cat.new   

# demonstrate polymorphism
animal_sound(dog)  # Output: Woof!
animal_sound(cat)  # Output: Meow!