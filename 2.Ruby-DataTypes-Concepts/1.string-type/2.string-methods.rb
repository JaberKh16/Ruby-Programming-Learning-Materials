# define a string variable
messge = "Ruby is awesome!"

# methods to manipulate strings
puts messge.upcase          # convert to uppercase
puts messge.downcase        # convert to lowercase
puts messge.capitalize      # capitalize the first letter
puts messge.reverse        # reverse the string  puts messge.length        
puts messge.include?("awesome") # check if substring exists
puts messge.gsub("awesome", "fantastic") # replace substring
puts messge.strip          # remove leading/trailing whitespace
puts messge.length         # get the length of the string
puts messge.phrase[2]        # access character at index 2
puts message.phrase[0, 4]     # access substring from index 0 to 3
puts message.phrase.index("R")     # find index of first occurrence of 'R'
puts messge.index("a")     # find index of first occurrence of 'a'
puts messge.split(" ")     # split the string into an array of words
puts messge.concat(" Let's code!") # concatenate another string