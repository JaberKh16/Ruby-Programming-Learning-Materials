# define a book class
class Book
    # defining attributes
    attr_accessor :title, :author, :pages, :publishe_date

    # defining constructor
    def initialize(title, author, pages, publishe_date)
        @title = title
        @author = author
        @pages = 0
        @publishe_date = ""
    end

    # method to display book details
    def display_info
        puts "Title: #{@title}, Author: #{@author}"
    end
end