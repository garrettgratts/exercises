=begin

Problem
  Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.
Data Structure
  Array
Algorithm
  - Create an empty array
  - Iterate through the array argument
  - Append each element to the beginning of the empty arr
=end

# def reverse(arr)
#   result_arr = []
#   arr.each { |el| new_arr.unshift(el) }
#   result_arr 
# end

# Further Exploration
# def reverse(array)
#   array.each_with_object([]) { |element, new_array| new_array.prepend(element) }
# end

def reverse(array)
  array.inject([], :unshift)
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

