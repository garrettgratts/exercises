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

# p string_to_integer('4321') == 4321
#p string_to_integer('570') == 570

# Further Exploration
# Write a hexadecimal_to_integer method that converts a string representing a hexadecimal number to its integer value.

HEX_DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
  'F' => 15
}

def hexadecimal_to_integer(string)
  num = 0
  string_arr = string.chars

  string_arr.each_with_index do |char, idx|
    power = (string_arr.length - 1) - idx
    num += HEX_DIGITS[char] * (16**power)
  end

  num
end

p hexadecimal_to_integer('4D9F') == 19871
p hexadecimal_to_integer('9C9DF')

# wow, this thing works! wooo
