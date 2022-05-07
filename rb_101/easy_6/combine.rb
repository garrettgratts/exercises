=begin

Problem
  Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays.
  No duplicates, even if they exist within the original Arrays.
Data Structure
  Array
Algorithm
  - Add the two arrays together
  - Remove duplicates
  - Return new array
=end

def merge(array_1, array_2)
  (array_1 + array_2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
