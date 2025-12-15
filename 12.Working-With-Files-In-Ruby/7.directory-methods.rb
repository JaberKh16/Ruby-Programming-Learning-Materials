# working with directory methods in ruby
require 'fileutils'

directory = "sample_dir"
file_path = "#{directory}/sample.txt"

# create directory if it doesn't exist
Dir.mkdir(directory) unless Dir.exist?(directory)

# create and write to a file
File.open(file_path, "w") do |file|
  file.puts "This is a sample file."
  file.puts "It demonstrates directory methods in Ruby."
end

# read from the file
File.open(file_path, "r") do |file|
  puts "File content:"
  puts file.read
end

# list files in the directory
puts "\nFiles in '#{directory}':"
Dir.foreach(directory) do |item|
  next if item == '.' or item == '..'
  puts item
end