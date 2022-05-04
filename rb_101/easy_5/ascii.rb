=begin

Problem
  Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. 
Data Structure
  Array
Algorithm
  - turn the string into an array of string characters
  - iterate through the array, calling String#ord on each character, increment sum.
  - return the sum of the ascii values
=end

def ascii_value(string)
  string.chars.map { |char| char.ord }.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

