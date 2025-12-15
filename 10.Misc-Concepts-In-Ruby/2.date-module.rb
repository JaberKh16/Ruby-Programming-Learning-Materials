require 'date'

# Create a Date object for today's date
today = Date.today
puts "Today's date is: #{today}"


# Create a Date object for a specific date
specific_date = Date.new(2023, 12, 25)
puts "Specific date is: #{specific_date}"

# Parse a date from a string
parsed_date = Date.parse("2024-07-04")
puts "Parsed date is: #{parsed_date}"

# Get components of the date
puts "Year: #{today.year}, Month: #{today.month}, Day: #{today.day}"

# Calculate the difference between two dates
date_difference = specific_date - today
puts "Days until specific date: #{date_difference.to_i} days"

# Add days to a date
future_date = today + 30
puts "Date after 30 days: #{future_date}"

# Subtract days from a date
past_date = today - 30
puts "Date 30 days ago: #{past_date}"` 