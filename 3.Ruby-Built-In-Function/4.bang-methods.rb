# working with bang methods in Ruby
# bang methods modify the object in place and usually end with an exclamation mark (!)
# they are used to indicate that the method performs a "dangerous" operation that alters the original object
# defined a hash
whisper = "HELLO EVERYBODY"

puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"


# By adding a ! to the end of your method, you indicate that this method performs its action and simultaneously overwrites the value of the original object with the result.
whisper.downcase!  # modifies whisper in place and which is equivalent to whisper = whisper.downcase
puts whisper #=> "hello everybody"