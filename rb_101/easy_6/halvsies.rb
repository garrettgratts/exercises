=begin

Problem
  Write a method taht takes an Array as an argument, and retursn two Arrays (as a pair of nested Arrays) that contain
  the first half and second half of the ariginal Array, respectively. 
Data Structure
  Array
Algorithm
  - If array contains odd number of elements 0 1 2 3 4 5 6, use index.
  - If it's even 0 1 2 3 4 5, use the number of elements in array

  - Create two empty arrays
  - Iterate through the array argument
  - foo = divide the index of the last element by two
  - When the index of each element if less that or equal to foo, push element to nested array 1
  - Or else, push element to nested array 2
  - Add nested array to results array
=end

def halvsies(array)
  nested_array1 = []
  nested_array2 = []

  array.each do |element|
    halfway = array.index(array[-1]) / 2
    array.index(element) <= halfway ? nested_array1.push(element) : nested_array2.push(element)
  end

  results_array = [nested_array1, nested_array2]
end

def halvsies(array)
  last_idx = array.index(array.last)
  halfway = last_idx / 2
  nested_array1 = array[0..halfway]
  nested_array2 = array[halfway+1]
end
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

