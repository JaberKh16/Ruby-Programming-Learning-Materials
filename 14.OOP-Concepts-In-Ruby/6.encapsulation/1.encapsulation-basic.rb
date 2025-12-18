# working concepts of encapsulation in ruby
class BankAccount
    attr_reader :balance

    def initialize(balance)
        @balance = balance  # instance variable
    end

    # public method to deposit money
    # set balance
    def deposit(amount)
        if amount > 0
            @balance += amount
            puts "Deposited: $#{amount}"
        else
            puts "Deposit amount must be positive."
        end
    end

    # public method to withdraw money
    # get balance
    def withdraw(amount)
        if amount > 0 && amount <= @balance
            @balance -= amount
            puts "Withdrew: $#{amount}"
        else
            puts "Insufficient funds or invalid amount."
        end
    end

    # public method to check balance
    def display_balance
        puts "Current Balance: $#{@balance}"
    end

    private
    # private method to calculate interest (not accessible outside the class)
    def calculate_interest(rate)
        @balance * rate / 100
    end
end

# get the user input
puts "OOP Concepts - Encapsulation".center(50, '-')
puts "Enter the account balance: "
account_balance = gets.chomp.to_f

# creating an instance of BankAccount
account = BankAccount.new(account_balance)

# using public methods
puts "Enter the deposit amount: "
deposit_amount = gets.chomp.to_f
account.deposit(deposit_amount)

puts "Enter the withdrawn amount: "
withdrawn_amount = gets.chomp.to_f
account.withdraw(withdrawn_amount)
account.display_balance

# trying to access private method (will raise an error)
# account.calculate_interest(5)  # Uncommenting this line will raise an error