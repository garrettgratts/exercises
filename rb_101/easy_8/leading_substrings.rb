=begin

Problem
  Write a method that returns a list of all substrings of a string that 
  start at the beginning of the original string. The return value should
  be arranged in order from shortest to longest substring

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

Data Structure
  Array for iterative methods
Algorithm
  - Use Integer#upto to loop once for each character in the array
  - Return an array on every iteration, containing the desired substrings
=end

def leading_substrings(string)
  substring_array = []
  1.upto(string.length) do |index|
    substring_array << string.slice(0, index)
  end
  substring_array
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
