=begin

Problem
  Write a method that takes a string, and returns a new string in which every consonant
  character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should
  not be doubled.
Data Structure
  N/A
Algorithm
  - Create empty string
  - Iterate on character of the string
  - Add each character, double if it meets two conditions
    - If the character is a letter and is also not a vowel
  - Or else, just add it
=end

def double_consonants(string)
  result = ''
  string.each_char do |char|
    if char.match?(/[A-Za-z]/) && char.match?(/[^aeiou]/)
      result += char * 2
    else
      result << char
    end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
