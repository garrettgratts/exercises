=begin

Problem
  Write a method that takes a non-empty string argument, and returns the middle character or
  characters of the argument.
  Arguments of even length, return two characters.
  Arguments of odd length, return one character.
Data Structure
  Array
Algorithm
  - Create array of characters
  - Loop until condition -> array.length equals 1 or two
  - Remove first and last element on each iteration
=end

def center_of(string)
  characters = string.chars
  until characters.length == 1 || characters.length == 2
    characters.shift
    characters.pop
  end
  characters.join
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
