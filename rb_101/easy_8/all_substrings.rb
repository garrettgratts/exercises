=begin

Problem
  Write a method that returns a list of all substring of a string.
  The returned list should be ordered by where in the string the
  substring begins.

  substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
Data Structure
  Array
Algorithm
  - Create index counter 
  - Create substrings array
  - Loop
  - Call the modified leading substrings method
  - Append it to array
=end

def leading_substrings(string, position = 0)
  substring_array = []
  1.upto(string.length - position) do |index|
    substring_array << string.slice(position, index)
  end
  substring_array
end

def substrings(string)
  substrings_array = []
  position = 0

  loop do
    substrings_array.concat(leading_substrings(string, position))
    position += 1
    break if position == string.length
  end

  substrings_array
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
