=begin

Problem
  Write a method that takes two strings as arguments, determines the longest of the two strings,
  and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again.
  You may assume that the strings are of different lengths.
Data Structure
  N/A
Algorithm
  - Use an if/else statement to assign both strings to variables
  - concatenate the strings outside of the if/else statement
=end

def short_long_short(str1, str2)
  if str1.length > str2.length
    long = str1
    short = str2
    
  else
    long = str2
    short = str1
  end

  short + long + short
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
