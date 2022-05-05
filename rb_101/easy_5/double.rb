=begin
Problem
  Write a method that takes a string argument and returns a new string that contains the value of
  the original string with all consecutive duplicate characters collapsed into a single character.
Data Structure
  Array for iteration
Algorithm
  - Create empty string called new str
  - Create array of characters, iterate through the array
  - Append character to new str unless it's already there
  - Return new str
=end

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length
    p crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

p crunch('abc') #== 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''
