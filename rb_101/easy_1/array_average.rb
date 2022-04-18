=begin

Problem
  Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array.
  Input: Array of integers
  Output: Integer, 
Data Object
  Array
Algorithm
  - Assign 0 to variable sum
  - Iterate through the array, adding each value to sum
  - Return sum
=end

def average(arr, int='int')
  sum = 0

  arr.each do |num|
    sum += num
  end

  average = sum / arr.count
end

puts average([3, 3, 3, 1])
