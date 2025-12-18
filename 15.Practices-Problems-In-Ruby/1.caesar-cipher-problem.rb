=begin
    From Wikipedia:
    In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, 
    Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques. 
    It is a type of substitution cipher in which each letter in the plaintext is replaced by 
    a letter some fixed number of positions down the alphabet. For example, 
    with a left shift of 3, D would be replaced by A, E would become B, and so on. 
    The method is named after Julius Caesar, who used it in his private correspondence.

    Please Refer The Link: [https://www.youtube.com/watch?v=36xNpbosfTY]
=end

# Problem-1: Implement a Caesar cipher that takes in a string and the shift factor and then outputs  
# the modified string using a right shift:   > caesar_cipher("What a string!", 5) => "Bmfy f xywnsl!"

def caesar_cipher(text, shift)
  shift = shift % 26  # handle large shifts

  result = text.chars.map do |char|
    if char >= 'a' && char <= 'z'
      (((char.ord - 'a'.ord + shift) % 26) + 'a'.ord).chr
    elsif char >= 'A' && char <= 'Z'
      (((char.ord - 'A'.ord + shift) % 26) + 'A'.ord).chr
    else
      char  # keep punctuation and spaces unchanged
    end
  end

  result.join
end

# Example
puts caesar_cipher("What a string!", 5) # => "Bmfy f xywnsl!"
