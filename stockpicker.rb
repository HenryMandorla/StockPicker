def stock_picker(prices)
  buy = nil
  sell = nil
  best_profit = 0
  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        profit = sell_price - buy_price
        if profit > best_profit
          best_profit = profit
          buy = buy_day
          sell = sell_day
        end
      end
    end
  end
  return [buy, sell, best_profit]
end