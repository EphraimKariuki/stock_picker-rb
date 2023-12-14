def stock_picker(stocks)
    best_profit = 0
    best_days = ''
    best_buy_day = 0
    best_sell_day = 0
    stocks.each_with_index do |stock1, index1|
      new_best_profit = 0
      stocks.each_with_index do |stock2, index2|
        profit = stock2 - stock1
        if profit > best_profit && new_best_profit >= best_profit && index2 > index1
          new_best_profit = best_profit
          best_profit = profit
          best_days = [index1, index2]
        elsif profit > best_profit && new_best_profit <= best_profit && index2 > index1
          new_best_profit = profit
          best_profit = profit
          best_days = [index1, index2] 
        else
          next 
        end
        best_buy_day = stock1
        best_sell_day = stock2 
      end
    end
    puts "#{best_days} # for a profit of #{best_sell_day} - #{best_buy_day} = #{best_profit}"
  end
  
  # Example usage:
  
  stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]
  stock_picker(stocks)
  