=begin

Problem
  Write a method that takes a string as an argument and returns a new string in which
  every uppercase letter is replaced by its lowercase version, and every lowercase letter
  by its uppercase version. All other character shoudl be unchanged.
Data Structure
  Array
Algorithm
  - Create an array of characters from the string
  - Use map to return a new array
  - Iterate on the array of words
  - If/Else Statement (If, Elsif, Else)
    - Use string range for upper and lower case
  - Join array to new string
=end

def swapcase(string)
  character_arr = string.chars.map do |char|
    if ('A'..'Z').include?(char)
      (char.ord + 32).chr
    elsif ('a'..'z').include?(char)
      (char.ord - 32).chr
    else
      char
    end
  end
  character_arr.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
