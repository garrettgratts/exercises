=begin
Problem
  Write a method that takes a string, and then returns a hash that contains 3 entries:
  one represents the percentage of characters in the string that are
  lowercase letters
  uppercase letters
  neither
Data Structure
  Array
Algorithm
  - Using the amazing Array#count, count what you want
  - Collect those numbers somewhere
  - Calculate percentages
  - Build hash
=end

def letter_percentages(string)
  lowercase = string.count('a-z') / string.length.to_f * 100
  uppercase = string.count('A-Z') / string.length.to_f * 100
  neither   = string.count('^a-zA-Z') / string.length.to_f * 100

  hash = {
    lowercase: lowercase,
    uppercase: uppercase,
    neither: neither  
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
