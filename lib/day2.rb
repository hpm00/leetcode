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

# -------------------------------------------------------------------------------------------------------------------------
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}

# * Above provided by problem *

def merge_two_lists(list1, list2)
    return list2 if list1.nil?
    return list1 if list2.nil?

    if list1.val <= list2.val
        list1.next = merge_two_lists(list1.next, list2) # the return value of merge_two_lists(list1.next, list2) is assigned to list1.next
        return list1
    else 
        list2.next = merge_two_lists(list1, list2.next) # the return value of merge_two_lists(list1, list2.next) is assigned to list2.next
        return list2
    end 

end

list1 = [1,2,4]
list2 = [1,3,4]
# Output: [1,1,2,3,4,4]

'''
What is a linked list? -> collection of objects (nodes) that are randomly stored in memory
HEAD -> NODE1 -> NODE2 -> NULL

node -> a node only knows about what data it contains, and who its neighbor is 
NODE = VALUE | NEXT (reference to the next node)

1. Right now : 
List 1: 1 -> 2 -> 4
List 2: 1 -> 3 -> 4 

What we want:
1 -> 1 -> 2 -> 3 -> 4 -> 4

we want to change what each node points to (we do this by changing the node in its .next variable (what it points to))

STACK CALL

list1.next = merge_two_lists(nil, 4)
list1.next = merge_two_lists(4, 4)
list2.next = merge_two_lists(3, 4)
list2.next = merge_two_lists(3, 2)
list1.next = merge_two_lists(3, 1)
list1.next = merge_two_lists(1, 1) 


list1.next = 4    the return value of above 
list1.next = 4    the return value of above
list2.next = 3    the return value of above
list2.next = 2    the return value of above
list1.next = 1    the return value of above

Result:
List 1:    1    3 →  4
           ↓    ↑    ↓
List 2:    1 →  2    4

1 → 1 → 2 → 3 → 4 → 4
'''

