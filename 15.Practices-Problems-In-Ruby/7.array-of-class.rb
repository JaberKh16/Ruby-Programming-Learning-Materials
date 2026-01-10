# exercise: array of class instances and summing an attribute
class Account
  attr_reader :name, :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def add_interest(rate)
    @balance += @balance * rate / 100.0
  end

  def to_s
    "Account: #{@name}, Balance: #{@balance}"
  end
end

accounts = [
  Account.new(100),
  Account.new(200),
  Account.new(300)
]

puts "Accounts:"
accounts.each do |account|
  puts account
end
