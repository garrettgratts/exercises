=begin

Problem
  Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number
Data Structure
  Hash for storage, Array for iteration
Algorithm
  - Create a constant variable, assign it a hash 
    - integers 0 to 19 as keys, eng. word of each number as values
  - Iterate through the array of integers
  - Create new array of number words
  - Sort this array by ASCII value
  - Iterate through sorted words array
  - Create array of integers by referencing hash constant
=end


NUMBER_WORDS = %w(zero one two three four
  five six seven eight nine
  ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort { |a, b| NUMBER_WORDS[a] <=> NUMBER_WORDS[b] }
end

arr = [1, 2, 3, 4, 5]
p alphabetic_number_sort(arr)
p arr
