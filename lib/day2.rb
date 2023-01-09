#DIFFICULTY LEVEL: EASY
# FOR ME: MEDIUM 

def is_subsequence(s, t)
  i = 0 
  j = 0
  result = []
  
  if s.length > t.length 
    return false 
  else 
      until j == t.length 
        if s[i] == t[j]
          i += 1
          j += 1 
          result.push("match") # each time we find a match
        else 
          j += 1
        end
      end 
  end 
  result.length == s.length # if # of matches in result array equal the length of s string, then return true
end

s = "ace"
t = "abcde"

p is_subsequence(s, t)

# think about cases where it returns false : when length(s) > length(t) (i.e. 'beauty' is not a substring of 'be' )
                                            # s has a character not found in t string (i.e. s = 'axe', t = 'abcde')

# draw it out:
# with s = 'ace' and t = 'abcde' this is what I want to see:
# s[i] == t[j]
# s[0] == t[0] ? -> yes, so move on to next character in both strings 
# i + 1 , j + 1
# s[1] == t[1] ? -> no, so keep searching for same character amongst rest of t characters
#         j + 1
# s[1] == t[2] ? -> yes!
# i + 1 , j + 1
# s[2] == t[3] ? -> no
#         j + 1
# s[2] == t[4] ? -> yes! 
# stop when we reach end of t string 

# when all  characters in s are "found" in t string, return true at end of function
# if we reached end of t string, and not all s characters are "found", return false 

def merge_two_lists(list1, list2)
end

