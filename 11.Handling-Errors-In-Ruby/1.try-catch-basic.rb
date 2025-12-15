=begin
    /** Error Handling In Ruby **/
    Syntax:
      begin
      rescue ExceptionType1
      end
=end

# working with try-catch basic
begin
    # code that may raise an exception
    puts "Enter a number:"
    number = gets.chomp().to_i
    result = 100 / number
    puts "Result: #{result}"
rescue ZeroDivisionError
    # handle division by zero error
    puts "Error: Division by zero is not allowed."
rescue StandardError => e
    # handle other standard errors
    puts "An error occurred: #{e.message}"
else
    # code to run if no exception occurs
    puts "Operation completed successfully."
ensure
    # code that always runs
    puts "Thank you for using the program."
end