=begin

Problem
  Write a method that takes a String of digits, and returns the appropriate number as an integer.
  You may not use any of the methods mentioned above, String#to_i
Data Structure
  Array
Algorithm
  - Turn string of digits into an array of digits
  - Create an empty array
  - Iterate through the array of digits
  - Turn each string number into the number it represents
  - Move into new array
=end

def string_to_integer(string)
  num = 0
  string_arr = string.chars

  string_arr.each do |char|
    num *= 10
    num += char.ord - 48
  end

  num
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
