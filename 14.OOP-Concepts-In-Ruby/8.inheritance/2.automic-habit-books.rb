# define  a subclass inheriting from Book
require_relative "../practices/1.class-practice-1.rb"

class AutoMicHabitBooks < Book
    # defining additional attributes
    attr_accessor :habit_type, :difficulty_level

    # defining constructor
    def initialize(title, author, pages, publishe_date, habit_type, difficulty_level)
        # call the parent class constructor
        super(title, author, pages, publishe_date)
        @habit_type = habit_type
        @difficulty_level = difficulty_level
    end

    # method to display book details including new attributes
    def display_info
        super()  # call the parent class method
        puts "Habit Type: #{@habit_type}, Difficulty Level: #{@difficulty_level}"
    end
end


# create an object of AutoMicHabitBooks class
habit_book = AutoMicHabitBooks.new("Atomic Habits", "James Clear", 320, "2018-10-16", "Personal Development", "Intermediate")

# display book details
habit_book.display_info()