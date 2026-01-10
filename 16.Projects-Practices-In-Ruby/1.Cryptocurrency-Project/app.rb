require_relative './lib/manager'

def sub_menu(manager, currency)
  puts "Available coins: #{manager.coin_list.join(', ')}"
  print "Enter coin symbol: "
  symbol = gets.chomp.upcase

  unless manager.coin_list.include?(symbol)
    puts "Invalid coin symbol."
    return
  end

  print "Enter amount: "
  amount = gets.chomp.to_f

  result = manager.convert(symbol, amount, currency)

  puts "#{amount} #{symbol} = #{currency} #{format('%.2f', result)}"
end

def menu
  manager = Manager.new

  loop do
    puts " Cryptocurrency Converter ".center(40, '-')
    puts "1. Convert to USD"
    puts "2. Convert to EUR"
    puts "3. Exit"
    print "Choose an option: "

    choice = gets.chomp

    case choice
    when '1'
      sub_menu(manager, 'USD')

    when '2'
      sub_menu(manager, 'EUR')

    when '3'
      puts "Exiting..."
      break

    else
      puts "Invalid option."
    end
  end
end

menu
