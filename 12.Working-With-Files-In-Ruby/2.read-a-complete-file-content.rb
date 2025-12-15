# working with file reading content

File.open("example.txt", "r") do |file|
    content = file.readlines()
    for line in content
        puts line
    end
end



# Alternatively, you can use:
# puts File.readlines("example.txt")