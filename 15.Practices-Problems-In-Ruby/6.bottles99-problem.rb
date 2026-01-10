# example 99 bottles of beer on the wall problem in Ruby
class wall
    def initialize
        @bottles = 99
    end
    
    def sing
        while @bottles > 0
            puts "#{@bottles} bottle#{'s' if @bottles != 1} of beer on the wall, #{@bottles} bottle#{'s' if @bottles != 1} of beer."
            puts "Take one down and pass it around, #{@bottles - 1} bottle#{'s' if @bottles - 1 != 1} of beer on the wall."
            puts ""
            @bottles -= 1
        end
    
        puts "No more bottles of beer on the wall, no more bottles of beer."
        puts "Go to the store and buy some more, 99 bottles of beer on the wall."
    end
end
    
# Create a wall instance and sing the song
beer_wall = wall.new
beer_wall.sing

