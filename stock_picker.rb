def stock_picker(stock_price_array)
  no_of_days=stock_price_array.length
  stop=no_of_days-1
  profit=0
  days=[]
  stock_price_array.each_with_index do |price, idx|
    start=idx+1
    for i in start..stop
      new_profit = stock_price_array[i] - price
      if new_profit>profit
        profit=new_profit
        days=[idx, i]
      end
    end
  end
  days
end

p stock_picker([17,3,6,9,15,8,6,1,10])