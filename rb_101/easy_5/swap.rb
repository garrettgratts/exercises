=begin

Problem
  Given a string of words separated by spaces, write a method that takes this string of words and returns a string
  in which the first and last letters of every word are swapped.
Data String
  Array fo sho
Algorithm
  - turn the string of words into an array of strings "hi shawn" => ["hi", "shawn"]
  - iterate on every string, use Array#each
  - save the characters at index 0 and -1 to variables, e.g. first_char, last_char
  - use String#[]= to mutate each string in the array
  - character at index 0 is equal to the character at index -1, and vice versa
  - turn the array into a string, return string
=end

def swap_first_and_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  char_arr = string.split.map do |char|
    swap_first_and_last_characters(char)
  end
  char_arr.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
