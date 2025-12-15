# working with files
# open(path, mode) => returns a file object
# Close the file is handled automatically by the block
File.open("example.txt", "r") do |file|
    # read the content of the file
    content = file.read()
    puts content
end