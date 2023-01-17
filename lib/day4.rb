def max_profit(prices, max_profit = 0)
  buy_price = prices.first
  
  return 0 if prices.empty? 

  prices.each do |sell_price| 
    if sell_price > buy_price
      max_profit = [max_profit, sell_price - buy_price].max
    else 
      buy_price = sell_price
    end
  end
  
  max_profit
end

''' 
we know if buying price is greater than selling price, we get a negative number. the minimum we can do is make a profit of $0.
so, when selling price is greater than buying price, we want to compare its profit to previous profits. 
input: [7, 1, 5, 3, 6, 4]
if we buy stock on day 1 for $7, we\'d get negative profit if we sold afterwards because selling prices are lower than what we bought it for
but, if we bought stock on day 2 for $1, selling price on day 3, day 4, day 5, day 6 are greater than what we bought it for (i.e profit > 0)
at this point, all that matters is which selling price will give us the most profit
we do this first by getting each profit: selling price - buying price
once we have all the profits, we get the maximum profit by using the #max method

is buying price of 7 < selling price of 7 ? No
    buying_price = 7
is buying price of 7 < selling price of 1 ? yes 
    buying_price = 1
is buying price of 1 < selling price of 5 ? yes 
    max_profit = [0, 4].max (4)
is buying price of 1 < selling price of 3 ? yes
    max_profit = [4, 3].max (4)
is buying price of 1 < selling price of 6 ? yes
    max_profit = [4, 5].max (5)
is buying price of 1 < selling price of 4 ? yes
    max_profit = [5, 3].max (5)

max_profit we can make is $5 with these prices. 
''' 

# ------------------------------------------------------------------------------------------
def longest_palindrome(s)
end