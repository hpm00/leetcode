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
    
end

''' 
'''