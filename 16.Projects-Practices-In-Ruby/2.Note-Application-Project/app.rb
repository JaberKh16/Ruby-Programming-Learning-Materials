require './lib/menu'

module Application
  def self.run
    puts "Welcome to the Note Application!"

    menu = Menu.new

    loop do
      puts "\nMenu:"
      puts "1. Add Note"
      puts "2. View Notes"
      puts "3. Edit Note"
      puts "4. Delete Note"
      puts "q. Exit"
      print "Choose an option: "

      choice = gets.chomp

      case choice
      when '1' then menu.add_note
      when '2' then menu.view_notes
      when '3' then menu.edit_notes
      when '4' then menu.delete_note
      when '5' then menu.undo
      when '6' then menu.search_notes
      when 'q'
        puts "Exiting the application. Goodbye!"
        break
      else
        puts "Invalid option."
      end
    end
  end
end

# run the application
Application.run
