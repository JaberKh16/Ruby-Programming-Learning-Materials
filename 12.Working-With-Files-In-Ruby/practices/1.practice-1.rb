require 'fileutils'

directory = "my_directory"
file_path = "#{directory}/example.txt"

# check if directory exists
unless Dir.exist?(directory)
  Dir.mkdir(directory)
  puts "Directory created"
else
  puts "Directory already exists"
end

# open file in read-write mode (create if not exists)
File.open(file_path, "w+") do |file|
  # writing to file
  file.puts "Hello, this is a Ruby file handling example."
  file.puts "Reading and writing in the same file."

  # move cursor to beginning for reading
  file.rewind

  # reading from file
  puts "\nFile content:"
  puts file.read
end
