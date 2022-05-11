=begin

Problem
  Write a method that takes a 
  first name,
  space,
  and last name
  passed as a single String argument,
  and returns a string that contains the
  last name,
  comma,
  space,
  and first name.
Data Structure
  Array
Algorithm
  - Create empty string
  - Create array of words
  - Append to empty string, words using array method first and last
=end

def swap_name(string)
  string.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
