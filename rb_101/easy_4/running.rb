=begin

Problem
  Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.
Data Structure
  Array
Algorithm
  - Create empty array
  - Create sum variable = 0
  - Create counter = 0
  - Loop, increment sum by the value at array argument[counter]
  - Add sum to the empty array
  - Increment counter
  - Break loop, return array
=end

def running_total(arr)
  new_arr = []
  sum = 0

  arr.each do |num|
    sum += num
    new_arr << sum
  end

  new_arr
end

# Further Exploration

def running_total(arr)
  sum = 0
  arr.each_with_object([]) do |num, arr|
    arr << sum += num
  end
end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([])

p running_total([2, 5, 13])
