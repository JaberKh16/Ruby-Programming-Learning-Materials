# working with appending mode in file
File.open("log.txt", "a") do |file|
    # append content to the file
    file.puts "Log entry at #{Time.now}: Application started."
    file.puts "Log entry at #{Time.now}: User logged in."
    file.puts "Log entry at #{Time.now}: Application terminated."
end

# Verify the content by reading the file
File.open("log.txt", "r") do |file|
    content = file.read()
    puts "Content of log.txt:"
    puts content
end