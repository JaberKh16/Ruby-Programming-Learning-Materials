# 

class Coin
    attr_reader :symbol, :usd, :eur 
    def initialize(symbol, usd, eur)
        @symbol = symbol
        @usd = usd
        @eur = eur
    end

    def display_info
        puts "Coin: #{@symbol}, Price in USD: $#{@usd}, Price in EUR: €#{@eur}"
    end
end