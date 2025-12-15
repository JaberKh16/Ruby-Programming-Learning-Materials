# program to find all text files in a directory and print their names
require 'fileutils'

directory = "text_files_dir"
FileUtils.mkdir_p(directory) unless Dir.exist?(directory)

# create some sample text files
(1..5).each do |i|
  File.open("#{directory}/file#{i}.txt", "w") do |file|
    file.puts "This is file number #{i}."
  end
end

# find and print all text files in the directory
puts "Text files in '#{directory}':"
Dir.glob("#{directory}/*.txt") do |file|
  puts File.basename(file)
end