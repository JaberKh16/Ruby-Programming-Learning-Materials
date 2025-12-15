# create a file in ruby
directory = "files"
File.open("#{directory}/newfile.txt", "w") do |file|
    file.write("This is a newly created file.\n")
    file.write("It contains some sample text.\n")
    file.write("Creating files in Ruby is straightforward!\n")
end