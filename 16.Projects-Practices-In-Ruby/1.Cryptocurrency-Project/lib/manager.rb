require 'open-uri'
require 'json'
require_relative './coin'

class Manager
  attr_reader :repo

  EUR_RATE = 0.85

  def initialize
    @repo = {}
    load_repo
  end

  def load_repo
    coins_data = web_scrap
    return unless coins_data.is_a?(Array)

    coins_data.each do |coin|
      symbol = coin['symbol'].upcase
      usd = coin['current_price']
      eur = (usd * EUR_RATE).round(2)

      @repo[symbol] = Coin.new(
        symbol: symbol,
        usd: usd,
        eur: eur
      )
    end
  end

  def web_scrap
    url = 'https://api.coingecko.com/api/v3/coins/markets' \
          '?vs_currency=usd&order=market_cap_desc&per_page=10&page=1&sparkline=false'

    JSON.parse(URI.open(url).read)
  rescue StandardError => e
    warn "API Error: #{e.message}"
    []
  end

  def coin_list
    @repo.keys
  end

  def convert(symbol, amount, currency)
    coin = @repo[symbol]
    return nil unless coin

    case currency
    when 'USD'
      (coin.usd * amount).round(2)
    when 'EUR'
      (coin.eur * amount).round(2)
    else
      nil
    end
  end
end
