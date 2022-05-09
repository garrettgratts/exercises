=begin

Problem
  Write a method that takes a string, and then returns a hash that contains 3 entries:
  one represents the number of characters in the string that are lowercase letters,
  one represents the numbers of characters that are uppercase letters,
  and the number of characters that are neither
Data Structure
  Array
Algorithm
  - Create an array of characters from the string argument
  - Iterate through the array, Enumerable#eachwithobject
  - Use range to see if each element is included
=end

def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
