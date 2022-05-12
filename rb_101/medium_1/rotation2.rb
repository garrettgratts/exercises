=begin

Problem
  Write a method that can rotate the last n digits of a number.
Data Structure
  N/A
Algorithm
  - From negative num to negative num, pass that array into rotate array method
  - Add the return value to an array
    - Array of element from index 0 to num, non-inclusive
=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, digits)
  number_array = number.to_s.chars
  results_array = number_array[0...-digits] + rotate_array(number_array[-digits..-1])
  results_array.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
