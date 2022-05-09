=begin

Problem
  Write a method that takes two Array arguments in which each Array
  contains a list of numbers, and returns a new Array that contains
  the *product of every pair of numbers that can be formed* between
  the elements of the two Arrays.
Data Structure
  Array
Algorithm
  - Create empty array called results array
  - Iterate through the first list
  - Iterate through the second list
  - Add products to results array
  -Sort results array
=end

def multiply_all_pairs(list1, list2)
  results_array = []

  list1.each do |num1|
    list2.each do |num2|
      results_array << num1 * num2
    end
  end
  results_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
