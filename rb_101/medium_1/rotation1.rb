=begin

Problem
  Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.
Data Structure
  N/A
Algorithm
  - Create an array of using index 1 through -1, append the first element of array argument 
=end

def rotate_array(array)
  array[1..-1] << array[0]
end

arr = [1, 2, 3]
str = 'chad'
rotate_array(str)


# Further Exploration
# Write a method that rotates a string instead of an array. Do the same thing for integers.
# It's exactly the same for strings the way did it, because they

def rotate_integer(integer)
  str = integer.to_s[1..-1] + integer.to_s[0]
  str.to_i
end

int = 123
p rotate_integer(int)
p int
