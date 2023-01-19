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
1. we know if buying price is greater than selling price, we get a negative number. the minimum we can do is make a profit of $0.
2. we also know the best day to buy stock is the day it\'s cheapest (i.e. if stock is $2 on day 2 & $1 on day 3, better to purchase stock on day 3)
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
def longest_palindrome(s, length = 0)
  letters = s.split("")
  once = false

  hash = letters.each_with_object(Hash.new(0)) do |letter, hash| 
      hash[letter] += 1
    end

  hash.clone.each do |k, v| 
    if v.odd? 
      hash[k] = v - 1
      hash.store("#{k}_remainder", 1)
    end
  end

  hash.each do |k, v|
    if v % 2 == 0
      length += v 
    elsif v == 1 && !once
      length += 1
      once = true
    end
  end
  
  length
end

''' 
Things I noticed:
1. When s.length > 1, string can be a palindrome if there are is an even pair of the same letter (i.e. aacdd or aab or bbcccc) -> length += count of letter
2. when letter occurence is 1, you can use it to make palindrome (i.e. aabcc or a or dddccaee) -> length += 1

Things I later noticed:
1. "ccc" is a palindrome even though "c" occurs an odd number of times
To fix this, I made clone hash that gives the hash[letter] = an even value of occurence 
and a key[clone_letter] = 1  (i.e hash {"c" => 3}  to  hash_clone  {"c" => 2 "c_remainder" => 1} ) in both hashes, "c" occurs 3 times in string
Thus, 
length += 2 for the even pair 
length += 1 for the remainder which can be used in palindrome (as explained above)
-> output: length = 3
'''