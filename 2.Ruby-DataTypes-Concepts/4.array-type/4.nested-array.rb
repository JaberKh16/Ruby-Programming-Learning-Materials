# working with nested array
teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]


# positive indexing
teacher_mailboxes[0][0] #=> "Adams"
teacher_mailboxes[1][0] #=> "Jones"
teacher_mailboxes[2][0] #=> "Perez"

# negative indexing starting from -1
teacher_mailboxes[0][-1]  #=> "Davis"
teacher_mailboxes[-1][0]  #=> "Perez"
teacher_mailboxes[-1][-2] #=> "Smith"


# trying to access element not existed
teacher_mailboxes[3][0] #=> Rails an exception called- NoMethodError because of nil Class does have [] method
teacher_mailboxes[0][4] #=> nil

# dig() used to access a nonexistent index inside of an exisiting nested element
teacher_mailboxes.dig(3, 0) #=> nil

# adding element using << or array[i].method()
test_scores[0].push(100)
test_scores << [100, 99, 98, 97]

# pop element
test_scores[0].pop

# iterating over nested array
teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row:#{row_index} = #{row}"
end


teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
  end
end

