# working with regex in ruby
string1 = "Something is really good about Ruby"

def check_if_a_word_available(string)
  puts "Enter the word: "
  word = gets.chomp

  if string.match?(/\b#{Regexp.escape(word)}\b/i)
    puts "Mactch found!"
  else
    puts "No match found."
  end
end

check_if_a_word_available(string1)
