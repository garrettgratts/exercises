=begin

Problem 
  Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters,
  write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
Data Structure
  N/A
Algorithm
  - create an array of characters from string
  - iterate with map, turn the non-alphabetic characters into spaces
  - remove the spaces
    - if the current character and the next character are a space, remove the current character
  - Array#join the array
=end

def cleanup(string)
  p string
  str_arr = string.chars
  str_arr.map! do |char|
    if ('a'..'z').include?(char)
      char
    else
      ' '
    end
  end
  
  next_idx = 0
  str_arr.delete_if do |char|
    next_idx += 1
    char == ' ' && str_arr[next_idx] == ' '
  end
  p str_arr.join
end

p cleanup("---what's my +*& line?") == ' what s my line '
