def preorder(root, stack = [])
    return [] if root.nil?
    
    stack << root.val

    root.children.each do |child|
        preorder(child, stack)
    end
    
    stack
end

''' 
preorder: Root, Left, Right 
1. return root value
2. return left node children values
3. return right node children values 

input: root = [1,null,3,2,4,null,5,6]

recursive method:
1. push root.val to stack
    stack = [1]
2. for each root child do the method again
    preorder(3, stack) -> stack = [1, 3]
    preorder(5, stack) -> stack = [1, 3, 5]
    preorder([], stack) -> stack = [1, 3, 5]
    preorder(6, stack) -> stack = [1, 3, 5, 6]
    preorder([], stack) -> stack = [1, 3, 5, 6]
    preorder(2, stack) -> stack = [1, 3, 5, 6, 2]
    preorder([], stack) -> stack = [1, 3, 5, 6, 2]
    preorder(4, stack) -> stack = [1, 3, 5, 6, 2, 4]
    preorder([], stack) -> stack = [1, 3, 5, 6, 2, 4]

    output: [1, 3, 5, 6, 2, 4]
'''

# ---------------------------------------------------------------------------------
def level_order(root)
    return [] if root.nil?  # part 1

    bfs = []
    q = [root] 

    while !q.empty?   # part 4

        level = [] 

        q.size.times do    # part 2
            node = q.shift 
            level << node.val 
            q << node.left if !node.left.nil?
            q << node.right if !node.right.nil? 
        end

        bfs << level  # part 3
    end
        
    bfs
end

''' 
Part 1 (above) deals with this situation ⬇
Input: [] 
Output: []

for other cases ⬇

Part 2 output: 
1.times do ... end
node = [3, 9, 20, null, null, 15, 7]
level = [3]
q = [[9], [20, 15, 17]]

Part 3 Output:
bfs = [[3]]

part 4 output:
level is back to empty array ( level = [] )
but q is not empty, q = [[9], [20, 15, 17]] so, 
do part 2 again -> this time it is 2.times do .... end 
                   node = [9] 
                   level = [9,20]
                   q = [[15], [17]]

do part 3 again -> bfs = [[3], [9,20]]

even after this, the loop isn\'t finished -> q is not empty ( q = [[15], [17]] ) so, 
do part 2 again -> again, 2.times do .... end 
    node = [15] 
    level = [15, 17]
    q = []

do part 3 again -> bfs = [[3], [9,20], [15,17]]

finally, q is empty. part 4 is finished 
now, return the bfs array


Input: [3,9,20,null,null,15,7]
Output: [[3],[9,20],[15,7]] 

Input: [1, 2]
Output: [[1], [2]]

'''