=begin

Problem
  Write a method that takes a string, and returns a new string in which every character is doubled.
Data Structure
  Array
Algorithm
  - Create empty string
  - Turn string into array of characters
  - Iterate of the array
  - Just add each characters twice in a row to the empty string or multiply
=end

def repeater(string)
  doubled_string = ''
  string.chars.each do |char|
    doubled_string += char * 2
  end
  doubled_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
