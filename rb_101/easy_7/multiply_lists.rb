=begin

Problem
  Write a method that takes two Array arguments in which each Array
  contains a list of numbers, and returns a new Array that contains
  the product of each pair of numbers from the arguments that have
  the same index.
Data Structure
  Array
Algorithm
  - zip the array
  - return a new array from iterating on it
=end

def multiply_list(array1, array2)
  array1.zip(array2).map { |sub_array| sub_array.inject(:*)}
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
