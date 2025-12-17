# project: creating a search program in a text file
# This program will read a text file and allow the user to search for a specific word or phrase.
# If the word or phrase is found, it will print the line number(s) and the line(s) containing the search term.

# Function to perform the search
def search_in_file(file_path, search_term)
  begin
    File.open(file_path, "r") do |file|
      line_number = 0
      found = false
      file.each_line do |line|
        line_number += 1
        if line.include?(search_term)
          puts "Found on line #{line_number}: #{line.chomp}"
          found = true
        end
      end
      puts "No occurrences found." unless found
    end
  rescue Errno::ENOENT
    puts "File not found: #{file_path}"
  rescue => e
    puts "An error occurred: #{e.message}"
  end
end

# Example usage
file_path = "sample.txt" # specify your text file path here
puts "Enter the word or phrase to search for:"
search_term = gets.chomp
search_in_file(file_path, search_term)