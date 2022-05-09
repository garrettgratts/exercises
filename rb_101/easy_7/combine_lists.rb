=begin

Problem
  Write  amethod that combines two Arrays passed in as arguments, and returns a new Array that ocntains all elements from 
  both Array arguments, with the elements taken in alternation.
Data Structure
  Array
Algorithm
  - Create counter assign it 0
  - Iterate on one of the arrays, doesn't matter which
  - Use the Array#=[] with counter to append each elemnt to new array
=end

def interleave(array1, array2)
  array1.zip(array2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
