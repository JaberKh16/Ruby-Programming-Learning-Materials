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
