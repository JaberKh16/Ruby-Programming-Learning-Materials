# working with methods in files
File.open("example.txt", "r") do |file|
    # define a method to count lines in the file
    def count_lines(file)
        lines = file.readlines()
        return lines.size
    end

    # call the method and print the number of lines
    line_count = count_lines(file)
    puts "The file has #{line_count} lines."
end