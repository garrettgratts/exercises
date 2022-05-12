=begin

Problem
  Write a method that takes an integer as argument, and returns the maximum rotation of that argument.
Data Structure
  Array
Algorithm
  - Create counter 
  - Loop 
  - Pass into our method, the number and the counter
  - Update both number and counter arguments on each loop
=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

num = 123
a = rotate_rightmost_digits(num, 3)
b = rotate_rightmost_digits(a, 2)

def max_rotation(number)
  n = number.to_s.length
  string = number.to_s
  result = nil
  
  loop do
    result = rotate_rightmost_digits(string, n)
    n -= 1
    string = result
    break if n == 0
  end
  result
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
