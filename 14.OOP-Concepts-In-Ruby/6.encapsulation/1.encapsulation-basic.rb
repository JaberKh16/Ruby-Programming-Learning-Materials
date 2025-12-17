# working concepts of encapsulation in ruby
class BankAccount
    def initialize(balance)
        @balance = balance  # instance variable
    end

    # public method to deposit money
    def deposit(amount)
        if amount > 0
            @balance += amount
            puts "Deposited: $#{amount}"
        else
            puts "Deposit amount must be positive."
        end
    end

    # public method to withdraw money
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

# creating an instance of BankAccount
account = BankAccount.new(1000)

# using public methods
account.deposit(500)
account.withdraw(200)
account.display_balance

# trying to access private method (will raise an error)
# account.calculate_interest(5)  # Uncommenting this line will raise an error