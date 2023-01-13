def reverse_list(head, previous = nil) # parameters: head and previous 
    return previous if head.nil? 

    current = head.next       
    head.next = previous 

    reverse_list(current, head) #here, current is now the argument for parameter 'head' and 'head' is now the argument for parameter 'previous'
end

#Input: head = [1, 2, 3, 4, 5]
#Output: [5, 4, 3, 2, 1]

'''
What we current have:

1 -> 2 -> 3 -> 4 -> 5

1.next = 2 
2.next = 3 
..and so forth 

What we want is: 
1.next = nil 
2.next = 1 
3.next = 2 
4.next = 3 
5.next = 4 

How do we get that? 

create a new parameter with the default value set to "nil" 

if we begin with 1, we want to set 1.next to nil. We do this by head.next = previous (previous is set to nil)

Using recursion, we move on to the next node: we set head parameter to current which is 2 so now we are on 2. 
Again, we want 2.next to equal 1. We do that by equating head.next to equal previous (in this case, previous is equal to 1)
We do this until the argument for parameter "head" is equal to nil, then return previous ....

CALL STACK 

reverse_list(nil, 5) returns 5 
reverse_list(5, 4)  returns 4
reverse_list(4, 3)  returns 3
reverse_list(3, 2)  returns 2
reverse_list(2, 1)  returns 1
reverse_list(head, previous) returns 5 -> 4 -> 3 -> 2 -> 1

'''
# _____________________________________________________________________________________________________________________________

def middle_node(head, count = 0)  
    original = head

    while head 
        count += 1
        head = head.next
    end
    
    limit = count / 2

    head = original

    limit.times do
        head = head.next
    end
    
    head
end

# Input: [1, 2, 3, 4, 5]
# Output: [3, 4, 5]

# Input: [1, 2, 3, 4, 5, 6]
# Output: [4, 5, 6]

''' 
First, we want to find out how many nodes are in a given linked list. Increase count by 1 when a node is reached. 
Then, to find the middle node: go through the linked list by total number of nodes / 2  (i.e. count / 2)

'''

