=begin

Problem
  Write a method that takes an Array as an argument, and reverses its elements in place;
  that is, mutate the Array passed into this method. The return value should be the same Array object.
Data Structure
  Array
Algorithm
  - Use negative indexes to switch each element in the array
  - The return value will always be the same array object, regardless of any mutation
=end

def reverse!(arr)
  return arr if arr == []

  idx = 0
  until idx >= arr.index(arr[-idx-1])
    arr[idx], arr[-idx-1] = arr[-idx-1], arr[idx]
    idx += 1
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

# 0 1 2 3 4 5
# 6 5 4 3 2 1 
