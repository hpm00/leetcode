def first_bad_version(n, first = 1)
    
    return n if n == first 

    if n > first 
        mid = (n + first) / 2 

        if is_bad_version(mid)
            first_bad_version(mid, first)
        else 
            first_bad_version(n, mid + 1)
        end 

    else 
        is_bad_version(first) ? first : last
    end
end

'''
we want to minimize the number of calls to API ( #is_bad_version(version) ) -> use merge sort
if midpoint of range is true -> the bad version must be midpoint or version before midpoint
if midpoint of range is false -> the bad version is after midpoint

the description specificed that range begins with 1 (version 1) -> thus, default value of first = 1

if n = 1, then version 1 must be bad version since problem stated there\'s a bad version in all cases 
thus, return n if n == first (1)

input: n = 5 ; bad = 4 
output: 4

call stack:
first_bad_version(5, 1) 
first_bad_version(5, 4)
first_bad_version(4, 1)
first_bad_version(4, 4) -> 4 !> 4 thus, do else part

input: n = 1 ; bad = 1
output: 1

input: n = 3 ; bad = 2
output: 2

input: n = 4 ; bad = 3
ouput: 3
'''