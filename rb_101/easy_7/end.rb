=begin

Problem
  Write a method that returns the next to last word in the String
Data Structure
  Array
Algorithm
  - Create an array of words
  - Return the desired element of this array, based on index
=end

def penultimate(string)
  words_array = string.split
  words_array[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
