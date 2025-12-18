=begin

    Modules are basically the concepts of modularity why its can be think of a two things
    which are - Namespaces and Mixins.

    Namespaces => provides a namespaces which resides a class or function under its scope
    Interface => provides a contract what class can do
    Mixins => provides a way to share (mix-in) ready code amoong multiple classes

    Example Of Namespaces:
    ----------------------
    module Toolbox
      class Ruler
        attr_accessor :length
      end
    end

    module Country
      class Ruler
        attr_accessor :name
      end
    end

    ruler1 = Toolbox::Ruler.new;  # Ruler:Class scopped to Toolbox:Module
    ruler1.length = 20
    puts ruler1.length # => 20

    ruler2 = Country::Ruler.new;  # Ruler:Class scopped to Country:Module
    ruler2.length = 20
    puts ruler1.length # => 20


    Example Of Mixins
    -----------------
    module NamingThing
      attr_accessr :name

      def print_name
        puts "Name: #{@name}"
      end
    end

    class Person
      include NamingThing
    end

    person = Person.new;
    person.name = "Joe"
    person.print_name  # => Name: Joe


    Ruby also built-in modules like Enumerable and Comparable which can do the hard work
    for you.

=end



# working with nested module
module Shop
  module Products
    class Item
      attr_reader :name, :price

      def initialize(name, price)
        @name = name
        @price = price
      end
    end
  end

  module Payments
    class Calculator
      TAX_RATE = 0.10

      def self.total_with_tax(item)
        item.price + (item.price * TAX_RATE)
      end
    end
  end
end


item = Shop::Products::Item.new("Notebook", 100)
total = Shop::Payments::Calculator.total_with_tax(item)

puts "Item: #{item.name}"
puts "Price: #{item.price}"
puts "Total with tax: #{total}"
