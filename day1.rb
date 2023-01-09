# DIFFICULTY LEVEL: EASY 
# FOR ME: MEDIUM 

def running_sums(nums)
   sum = 0
   nums.map { |number| sum += number  }
end

# need to transform data in array (transform each element) -> #map method 
# for each data -> data + sum of previous data (sum variable)

# input : [1,2,3,4]
# output : [1,3,6,10] 

# ---------------------------------------------------------------------------------------------------------

def pivot_index(nums)
  total = nums.sum
  left_sum = 0
  
  nums.each_with_index do |num, idx|
    return idx if left_sum == (total - left_sum - num) # <- computes the "right side" sum
    left_sum += num
  end
  -1
end 

# iterate through array -> compute the sum of elements to the left and to the right of current element 
# if left_sum == right_sum, return index of element 
# return -1 if no such index exists

# Input: nums = [1,7,3,6,5,6]
# Output: 3
# why? at index 3: left, right sum are equal

# ---------------------------------------------------------------------------------------------------------

def is_ismorphic(s, t)
  s_arr = s.split('')
  t_arr = t.split('')

  s_t = {}
  t_s = {}

  zipped = s_arr.zip(t_arr) # compare two arrays, element by element -> merges array 
                            # good for us, we want first element in array1 & first element in array2 to have a "relationship"

  zipped.each do |char_set| 
    if !s_t.key?(char_set[0]) && !t_s.key?(char_set[1])
      s_t[char_set[0]] = char_set[1]
      t_s[char_set[1]] = char_set[0]
    end 
  end
  
  word = ''
  s_arr.each { |char| word << s_t.fetch(char, '') }
    
  word == t 
end 

# create dictionary: keys -> "s" string characters : values -> "t" string characters
# no two characters can "point" to the same character i.e. "b" => "d", "a" => "d" INVALID
# make sure characters map to each other in both ways  P <=> T (P maps to T and vice versa)
# fetch values from dictionary using s string's characters as keys
# if values == t string, then return true else false

# Input: s = "foo", t = "bar"
# Output: false

# Input: s = "paper", t = "title"
# Output: true

# Input: s = "bbbaaaba", t = "aaabbbba"
# Output: false
