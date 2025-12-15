# working with writing mode in file
File.open("output.txt", "w") do |file|
    # write content to the file
    file.puts "This is the first line."
    file.puts "This is the second line."
    file.puts "Writing to files in Ruby is easy!"
end


# Verify the content by reading the file
File.open("output.txt", "r") do |file|
    content = file.read()
    puts "Content of output.txt:"
    puts content
end