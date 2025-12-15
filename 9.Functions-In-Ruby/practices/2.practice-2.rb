# excercise: check a string is isogram or not
# isogram: a word or phrase without a repeating letter
def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split
  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin") #=> false
isogram?("Machine")