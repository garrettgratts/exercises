=begin

Problem
  write a method that returns true if the arguement passed as an argument is a palindrom, false otherwise
  case, punctuation, and spaces matter
Data Structure
  N/A
Algorithm
  - define a method that takes one argument
  - use String#reverse on the parameter
  - return a boolean using ==
=end

# def palindrome?(str)
#   str == str.reverse
# end

# write another one that works on strings and arrays. No if else or case modifiers.

def palindrome?(input)
  input == input.reverse
end

arr = [1, 'cat', 'dog', 'cat', 1]

p palindrome?(arr)
p arr
